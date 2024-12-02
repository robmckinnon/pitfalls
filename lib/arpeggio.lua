local arpeggiate = {}

local position = 1
local chord_positions = {}
local last_degree = nil
local remaining_positions = {}
local degree
local degrees
local matches
local values

function positionrand() position = math.random(scale.length) end

-- callback functions
local pitches_off
local pitch_on_position

function arpeggiate.init(pitches_off_fn, pitch_on_position_fn)
  pitches_off = pitches_off_fn
  pitch_on_position = pitch_on_position_fn
end

function arpeggiate.set_position(i)
  position = i
end

function arpeggiate.position()
  return position
end

function arpeggiate.scale_up(scale, intervals)
  position = (position % scale.length) + 1
  pitches_off()
  pitch_on_position(position)
end

function arpeggiate.scale_down(scale, intervals)
  position = position - 1
  position = position < 1 and scale.length or position
  pitches_off()
  pitch_on_position(position)
end

function arpeggiate.reset_chord_positions()
  chord_positions = {}
end

function arpeggiate.reset()
  chord_positions = {}
  last_degree = nil
  remaining_positions = {}
end

function arpeggiate.chord(scale, intervals)
  if pf.tablelength(chord_positions) == 0 then
    position = (position % scale.length) + 1
    -- print("+1", position)
    remaining_positions = {}
    degree = position
    matches = chords.match(intervals:interval_labels(degree))
    values = {}
    for n,v in pairs(matches) do
      values[#values+1] = v
    end
    if #values > 0 then
      local degrees = values[math.random(#values)]
      chord_positions[degree] = "P1"
      for deg,int_label in pairs(degrees) do
        chord_positions[(tonumber(deg) + degree) % scale.length + 1] = int_label
      end
    end
    -- pf.printp(chord_positions)
    last_degree = (degree % scale.length) + 1
    -- print('---', last_degree)
  end
  if chord_positions[position] ~= nil then
    chord_positions[position] = nil
    remaining_positions = {}
    for i,v in pairs(chord_positions) do
      if v ~= nil then
        remaining_positions[#remaining_positions + 1] = i
      end
    end
    pitches_off()
    pitch_on_position(position)
    local count = pf.tablelength(chord_positions)
    position = count > 0 and remaining_positions[1] or math.random(scale.length)
    -- pf.dprint(position)
  end
end

function arpeggiate.chords(scale, intervals)
  position = math.random(scale.length)
  -- (position % scale.length) + 1
  if pf.tablelength(chord_positions) == 0 then
    degree = position
    matches = chords.match(intervals:interval_labels(degree))
    values = {}
    for n,v in pairs(matches) do
      values[#values+1] = v
    end
    if #values > 0 then
      degrees = values[math.random(#values)]
      chord_positions[degree] = "P1"
      for deg,int_label in pairs(degrees) do
        chord_positions[(tonumber(deg) + degree) % scale.length + 1] = int_label
      end
    end
  end
  if chord_positions[position] ~= nil then
    pitches_off()
    for i,v in pairs(chord_positions) do
      pitch_on_position(i)
      chord_positions[i] = nil
    end
  end
end

return arpeggiate