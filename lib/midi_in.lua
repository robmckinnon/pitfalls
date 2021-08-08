local midi_in = {}
local midi_in_device

local scale
local intervals
local pitches

local pitch_on
local pitch_off

function midi_in.use_midi()
  -- return (params:get("output") == 2 or params:get("output") == 3)
  return true 
end

function midi_in.event(data)
  local d = midi.to_msg(data)
  if (d.type ~= nil) then
    if (d.type == "note_on") then
      midi_in.note_on(d)
    elseif (d.type == "note_off") then
      midi_in.note_off(d)
    end
  end
end

function midi_in.init(on_callback, off_callback)
  midi_in_device = midi.connect(1)
  midi_in_device.event = midi_in.event
  pitch_on = on_callback
  pitch_off = off_callback
end

function midi_in.update_pitches(new_scale, new_intervals, new_pitches)
  scale = new_scale
  intervals = new_intervals
  pitches = new_pitches
end

function midi_in.oct(note)
  return note // 12 - 1
end

function midi_in.deg(note)
  return note % 12 + 1
end

function midi_in.pitch(note)
  return pitches:octdegfreq(midi_in.oct(note), midi_in.deg(note))
end

function midi_in.note_on(msg)
  -- patch.pitch_on(midi_in.pitch(msg.note), msg.vel)
  pitch_on(midi_in.pitch(msg.note))
end

function midi_in.note_off(msg)
  pitch_off(midi_in.pitch(msg.note))
end

return midi_in
