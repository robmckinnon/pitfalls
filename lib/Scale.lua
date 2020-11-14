local MAX_STEPS = 16
local MIN_STEPS = 3
local MAX_STEP_SIZE = 1001
local L = 2
local S = 1
local LABELS = {"s", "L"}

Scale = {}

function Scale:new(large, small, sequence)
  local s = setmetatable({}, { __index = Scale })
  s.step = {}
  s.stepbackup = {L,L,S,L,L,L,S,L,L,L,S,L,L,L,S,L}
  for i = 1, #sequence do
    local char = sequence:sub(i,i)
    s.step[i] = (char == "L" and L) or S
  end
  s.large = large
  s.small = small
  s.length = #sequence
  s.divisions = {}
  s.edivisions = nil
  s.tonic = 1
  s.mode = 1
  return s
end

function Scale:step_size(i)
  return LABELS[self.step[ self:offset(i) ]]
end

function Scale:sequence()
  local seq = {}
  for i = 1, #self.step do
    seq[i] = self:step_size(i)
  end
  return table.concat(seq,"")
end

function Scale:step_value(i)
  return (self.step[ self:offset(i) ] == L and self.large) or self.small
end

function Scale:offset(i)
  if (self.mode == 1) then
    return i
  else
    local offset = ((self.mode - 1) + i)
    if (offset > self.length) then
      return offset % self.length
    else
      return offset
    end
  end  
end
  
function Scale:set_large(l)
  self.large = l
end

function Scale:set_small(s)
  self.small = s
end

function Scale:set_mode(mode)
  self.mode = mode
end

function Scale:change_mode(d)
  local orig = self.mode
  self.mode = util.clamp(self.mode+d, 1, self.length)
  return orig ~= self.mode
end

function Scale:change_tonic(d)
  local orig = self.tonic
  self.tonic = util.clamp(self.tonic+d, 1, self.edivisions)
  return orig ~= self.tonic
end

function Scale:update_edo()
  local orig = self.edivisions
  local edo = 0
  for i = 1,self.length do
    edo = edo + self:step_value(i)
  end
  self.edivisions = edo
  local changed = orig ~= self.edivisions
  if changed then
    self.tonic = util.clamp(self.tonic, 1, self.edivisions)
  end
  return changed
end

function Scale:change_step(d, i)
  local index = self:offset(i)
  local orig = self.step[ index ]
  self.step[ index ] = util.clamp(self.step[ index ]+d, S, L)
  self.stepbackup[ index ] = self.step[ index ]
  local changed = orig ~= self.step[ index ]
  if changed then
    self:update_edo()
  end
  return changed
end

function Scale:change_large(d)
  local orig = self.large
  -- local value = self.large + d
  -- while pf.gcd(self.small,value)~=1 do
  --   value = value + d
  -- end
  -- maxi = (d==1 and value) or (self.small + 1)
  self:set_large(util.clamp(self.large + d, self.small + 1, self.large + 1))
  
  local changed = self.large~=orig
  if changed then
    self:update_edo()
  end
  return changed
end

function Scale:change_small(d)
  local orig = self.small
  local value = self.small + d
  -- while pf.gcd(value,self.large)~=1 do
  --   value = value + d
  -- end
    
  self:set_small(util.clamp(value, 1, self.large - 1))
  
  local changed = self.small~=orig
  if changed then
    self:update_edo()
  end
  return changed
end

function Scale:change_length(d)
  local orig = self.length
  if d == 1 then
    self.length = util.clamp(self.length + 1, 1, MAX_STEPS)
  end
  if d == -1 then
    self.length = util.clamp(self.length - 1, MIN_STEPS, self.length)
  end

  local changed = self.length~=orig
  if changed then
    self.mode = 1
    if d == 1 then
      self.step[self.length] = self.stepbackup[self.length] or L
    end
    if d == -1 then
      if (self.length > MIN_STEPS) then
        table.remove(self.step, #self.step)
      end
    end
    self:update_edo()
  end
  return changed
end

