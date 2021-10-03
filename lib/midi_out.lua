local midi_out = {}
local midi_out_device
local midi_out_channel
local active_notes = {}

function midi_out.use_midi()
  -- return (params:get("output") == 2 or params:get("output") == 3)
  return true 
end
  
function midi_out.all_notes_off()
  if midi_out.use_midi() then
    for _, a in pairs(active_notes) do
      midi_out_device:note_off(a, nil, midi_out_channel)
    end
    active_notes = {}
  end
  midi_out_device:pitchbend(0, midi_out_channel)
end

function midi_out.pitch_bend_value(midi)
  local semitone_delta = midi - math.floor(midi)
  if semitone_delta == 0 then
    return 0
  else
    -- Standard MIDI Files use a pitch wheel range of +/-2 semitones = 200 cents
    return (8192 * semitone_delta) / 2
  end
end

local denom = math.log(2)

function midi_out.hz_to_midi(freq)
  return pf.hz_to_midi(freq)
end

function midi_out.note_off_pitch_bend(freq)
  if midi_out.use_midi() then
    local note_num = midi_out.hz_to_midi(freq)
    midi_out_device:note_off(math.floor(note_num), nil, midi_out_channel)    
  end
end

function midi_out.note_on_pitch_bend(freq)
  if midi_out.use_midi() then
    -- midi_out.all_notes_off()
    local note_num = midi_out.hz_to_midi(freq)
    local bend = midi_out.pitch_bend_value(note_num)
    midi_out_device:note_on(math.floor(note_num), 95, midi_out_channel)
    -- print(bend)
    midi_out_device:pitchbend(math.floor(bend), midi_out_channel)
    table.insert(active_notes, math.floor(note_num))

    -- if params:get("note_length") < 4 then
      -- notes_off_metro:start((60 / params:get("clock_tempo") / params:get("step_div")) * params:get("note_length"), 1)
    -- end
  end
end

function midi_out.stop()
  midi_out.all_notes_off()
end

function midi_out.init(virtual_port)
  midi.cleanup()
  midi_out_device = midi.connect(virtual_port)
  midi_out_device.event = function() end
  midi_out_channel = 1

  local MSB=6
  local LSB=38
  local ch = 2
  local semitone_range = 2
  local msg = {}
  if (false) then
    -- Select 0,0 Pitch bend range
    midi:cc(101, 0, ch)
    midi:cc(100, 0, ch)
    -- set pitch bend sensitivity to two semitones, e.g. +-1
    midi:cc(MSB, semitone_range, ch)
    -- "End of RPN" message
    midi:cc(101, 127, ch)
    midi:cc(100, 127, ch)
  end
end

return midi_out