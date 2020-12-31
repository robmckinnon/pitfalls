local MAX_STEP_SIZE = 1001
local M = 3
local L = 2
local S = 1
local LABELS = {"s", "L", "M"}

Scale = {}

function Scale:new(large, small, sequence, medium)
  local s = setmetatable({}, { __index = Scale })
  s.step = {}
  s.stepbackup = {L,L,S,L,L,L,S,L,L,L,S,L,L,L,S,L}
  for i = 1, #sequence do
    local char = sequence:sub(i,i)
    s.step[i] = (char == "L" and L) or ( (char == "M" and M) or S )
  end
  s.large = large
  s.medium = medium or large
  s.small = small
  s.length = #sequence
  s.divisions = {}
  s.edivisions = nil
  s.tonic = 1
  s.mode = 1
  s.max_steps = 12
  s.min_steps = 3
  return s
end

function Scale:has_medium()
  for i = 1, #self.step do
    if self.step[ self:offset(i) ] == M then
      return true
    end
  end
  return false
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
  return (self.step[ self:offset(i) ] == L and self.large) or ( (self.step[ self:offset(i) ] == M and self.medium) or self.small )
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

function Scale.set_max_steps(max)
  self.max_steps = max
end

function Scale.set_min_steps(min)
  self.min_steps = min
end

function Scale:set_large(l)
  self.large = l
end

function Scale:set_medium(m)
  self.medium = m
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
  self.step[ index ] = util.clamp(self.step[ index ]+d, S, M)

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
    if self.large <= self.medium then
      self:set_medium(util.clamp(self.large - 1, self.small + 1, self.large))
    end
    self:update_edo()
  end
  return changed
end

function Scale:change_medium(d)
  local orig = self.medium
  self:set_medium(util.clamp(self.medium + d, self.small + 1, (self.large == (self.small + 1) and self.large or (self.large-1) ) ))

  local changed = self.medium~=orig
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

  if self:has_medium() then
    self:set_small(util.clamp(value, 1, self.medium - 1))
  else
    self:set_small(util.clamp(value, 1, self.large - 1))
  end

  local changed = self.small~=orig
  if changed then
    if self.small >= self.medium then
      self:set_medium(util.clamp(self.small + 1, self.small + 1, self.large))
    end
    self:update_edo()
  end
  return changed
end

function Scale:change_length(d)
  local orig = self.length
  if d == 1 then
    self.length = util.clamp(self.length + 1, 1, self.max_steps)
  end
  if d == -1 then
    self.length = util.clamp(self.length - 1, self.min_steps, self.length)
  end

  local changed = self.length~=orig
  if changed then
    self.mode = 1
    if d == 1 then
      self.step[self.length] = self.stepbackup[self.length] or L
    end
    if d == -1 then
      if (self.length > self.min_steps) then
        table.remove(self.step, #self.step)
      end
    end
    self:update_edo()
  end
  return changed
end
