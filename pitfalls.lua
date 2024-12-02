-- "item: There are pitfalls in
--      using equal division
--      within which to calculate
--      2-interval-patterns which
--      the unwary traveler will
--      most certainly fall into."
--                -- Erv Wilson [0]
-- \/ \/ \/
--
-- Define & play your own
-- microtonal scales.
--
-- Set interval structure as a
-- sequence of large (L), small (s),
-- and medium (M) steps.
--
-- e.g.
--   LLsLLLs  L: 2  s: 1  fixed: C
--   - is C Major diatonic scale
--
--   LLsLLLs  L: 3  s: 2
--   - is a 19 EDO, 7 note scale
--
--   LLsLLL   L: 3  s: 1
--   - is a 16 EDO, 6 note scale
--
-- Or browse named scales. [1]
--
-- Play scale keyboard on grid.
--
-- E1 change PolyPerc cutoff filter
--    randomize MollyThePolly synth params
-- E2 change value
-- E3 select step or parameter
--
-- K1
-- K2 toggle arpeggiator
-- K3 toggle display mode
--
-- [0] http://anaphoria.com/
--            wilsonintroMOS.html
-- [1] http://www.huygens-fokker.org/
--           docs/modename.html
-- .................................................................
--
-- pitfalls 0.4.0 ostinato odington release
-- copyright 02021 robmckinnon
-- GNU GPL v3.0
-- .................................................................
--

include("pitfalls/lib/includes")
pf.debug(false)

local run = false
local coroutine_id = nil

local scale = nil
local intervals = nil
local pitches = nil
local pitches_on = {}

local edit = 1
local previous_edit = 1

local change = {}
local display = display_circle

function init()
  -- see lib/parameters.lua for param setup
  local sequence = params:get("pitfalls_sequence")
  if string.find(sequence, "M") then
    scale = Scale:new(params:get("pitfalls_L"), params:get("pitfalls_s"), sequence, params:get("pitfalls_M"))
  else
    scale = Scale:new(params:get("pitfalls_L"), params:get("pitfalls_s"), sequence)
  end
  scale:set_mode(params:get("pitfalls_mode"))
  scale:set_tonic(params:get("pitfalls_tonic"))
  scale:update_edo()
  params:set("pitfalls_tonic", scale.tonic, true)

  params:set_action("pitfalls_cutoff", function(x) patch.cutoff(x) end)
  params:set_action("pitfalls_engine", function(x)
    local name = parameters.engine()
    patch.load_engine(name)
  end)
  params:set_action("pitfalls_patch", function(x)
    local name = parameters.patch()
    patch.load_patch(name)
  end)
  params:set_action("pitfalls_midi_no_start", function(x) update_pitches(false) end)
  params:set_action("pitfalls_tuning", function(x) update_pitches(false) end)
  params:set_action("pitfalls_arpeggiate", function(x) update_arpeggiate() end)

  params:set_action("pitfalls_grid_lib", function(x)
    print("writing grid_lib default params file", parameters.grid_lib())
    params:write()
  end)

  patch.load_engine(parameters.engine())
  patch.load_patch(parameters.patch())
  g.init(pitch_on, pitch_off)
  -- midi_out.init()
  local in_virtual_port = 1
  local out_virtual_port = 2
  
  midi_in.init(in_virtual_port, pitch_on, pitch_off)
  
  midi_out.init(out_virtual_port)
  
  update_pitches(true)

  -- -- mixin the MusicUtil scale names
  -- pf.pop_named_sequences(named_scales.lookup)
  display.drawintervals(scale, intervals)

  arpeggiate.init(pitches_off, pitch_on_position)

  if params:get("pitfalls_arpeggiate") ~= 0 then
    start_arppegiate()
  end
end

function stop_arppegiate()
  run = false
  if coroutine_id ~= nil then
    clock.cancel(coroutine_id)
    coroutine_id = nil
  end
end

function start_arppegiate()
  run = true
  coroutine_id = clock.run(step)
end

function step()
  while run do
    clock.sync(1/params:get("pitfalls_tempo_div"))
    do_step()
  end
end

function do_step()
  arpeggiate[parameters.arpeggiate()](scale, intervals)
  redraw()
end

function redraw()
  display.redraw(params:get("pitfalls_tuning"), edit, params:get("pitfalls_octave"), arpeggiate.position(), scale, intervals, params:get("pitfalls_midi_no_start"), display == display_patch)
end

function key(n,z)
  if n == 3 and z == 1 then
    -- increment_mode()
    if display == display_strings then
      display = display_patch
      previous_edit = edit - scale.length
      edit = display_orig.tempo_division_input() + scale.length
    elseif display == display_patch then
      edit = previous_edit + scale.length
      display = display_circle
    elseif display == display_circle then
      display = display_orig
    else
      display = display_strings
    end
    redraw()
  elseif n == 2 and z == 1 then
    parameters.inc_arpeggiate()
  end
end

function enc(n,d)
  if n == 1 then
    params:delta("pitfalls_cutoff", d)
  elseif n == 2 then
    change.edit_position(d)
  elseif n ==3 then
    change_value(d)
  end
end

function toggle_arppegiate()
  if run then
    stop_arppegiate()
  else
    start_arppegiate()
  end
end

function update_pitches(update_intervals)
  if update_intervals then
    intervals = ScaleIntervals:new(scale)
    arpeggiate.reset_chord_positions()
  end
  pitches = Pitches:new(scale, intervals, params:get("pitfalls_tuning"), params:get("pitfalls_midi_no_start"))
  patch.note_off_all()
  display_orig.all_degrees_off()
  g.update_grid(scale, intervals, pitches)
  midi_in.update_pitches(scale, intervals, pitches)
  params:write()
end

function change_value(d)
  local input_key = display.edit_position(edit, scale)

  if change[input_key] ~= nil then
    change[input_key](d)
  elseif pcall(params.get, params, input_key) then
    params:delta(input_key, d)
  end

  redraw()
end

function change.edit_position(d)
  local input_index = edit - scale.length
  local is_display_patch = display == display_patch

  local is_scale_name_input = input_index == display_orig.scale_name_input()
  local is_tempo_div_input = input_index == display_orig.tempo_division_input()

  if is_display_patch and is_scale_name_input and d == 1 then
    edit = display_orig.tempo_division_input() + scale.length
  elseif is_display_patch and input_index == display_orig.tempo_division_input() and d == -1 then
    edit = display_orig.scale_name_input() + scale.length
  else
    local clamp_input = is_display_patch and patch.is_mx_samples() and display_orig.patch_input()
      or is_display_patch and display_orig.engine_input()
      or display_orig.o_input()

    edit = util.clamp(edit + d, 1, scale.length + clamp_input)
  end

  input_index = edit - scale.length
  if (input_index == display_orig.m_input() and scale:has_medium() == false) then
    edit = edit + d
  end

  redraw()
end

function change.step(d)
  if scale:change_step(d, edit) then
    params:set("pitfalls_sequence", scale:sequence(), true)
    params:set("pitfalls_tonic", scale.tonic, true)
    update_pitches(true)
  end
end

function change.tonic(d)
  if scale:change_tonic(d) then
    params:set("pitfalls_tonic", scale.tonic, true)
    update_pitches(false)
  end
end

function change.mode(d)
  if scale:change_mode(d) then
    params:set("pitfalls_mode", scale.mode, true)
    update_pitches(true)
  end
end

function change.small(d)
  if scale:change_small(d) then
    params:set("pitfalls_s", scale.small, true)
    params:set("pitfalls_tonic", scale.tonic, true)
    update_pitches(true)
  end
end

function change.medium(d)
  if scale:change_medium(d) then
    params:set("pitfalls_M", scale.medium, true)
    params:set("pitfalls_tonic", scale.tonic, true)
    update_pitches(true)
  end
end

function change.large(d)
  if scale:change_large(d) then
    params:set("pitfalls_L", scale.large, true)
    params:set("pitfalls_tonic", scale.tonic, true)
    update_pitches(true)
  end
end

function change.scale_name(d)
  local scales = reverse_name.no_names[scale.length]
  scale_no_index = util.clamp(scale_no_index + d, 1, #scales)

  local name = scales[scale_no_index]
  local data = reverse_name.no_lookup[scale.length][name]

  if data.m == nil then
     scale = Scale:new(data.l, data.s, data.seq)
  else
     scale = Scale:new(data.l, data.s, data.seq, data.m)
  end
  scale:update_edo()
  params:set("pitfalls_sequence", scale:sequence(), true)
  params:set("pitfalls_L", scale.large, true)
  params:set("pitfalls_M", scale.medium, true)
  params:set("pitfalls_s", scale.small, true)
  params:set("pitfalls_mode", scale.mode, true)
  params:set("pitfalls_tonic", scale.tonic, true)
  update_pitches(true)
end

function change.scale_size(d)
  if scale:change_length(d) then
    if d == 1 then
      edit = util.clamp(edit + 1, 1 + display_orig.n_input(), scale.max_steps + display_orig.n_input())
    end
    if d == -1 then
      edit = util.clamp(edit - 1, scale.min_steps + display_orig.n_input(), edit)
    end
    params:set("pitfalls_sequence", scale:sequence(), true)
    params:set("pitfalls_mode", scale.mode, true)
    params:set("pitfalls_tonic", scale.tonic, true)
    update_pitches(true)
  end
end

function change.tempo_div(d)
  if params:get("pitfalls_tempo_div") == 1 then
    if d == -1 then
      d = -0.5
    end
  elseif params:get("pitfalls_tempo_div") == 0.5 then
    if d == -1 then
      d = -0.25
    elseif d == 1 then
      d = 0.5
    end
  elseif params:get("pitfalls_tempo_div") == 0.25 then
    if d == 1 then
      d = 0.25
    end
  end

  params:set("pitfalls_tempo_div",
    util.clamp(
      params:get("pitfalls_tempo_div") + d,
      0.25,
      64
    )
  )
end

function update_arpeggiate(x)
  -- print(parameters.arpeggiate())
  if parameters.arpeggiate() == "off" then
    stop_arppegiate()
    pitches_off()
    patch.note_off_all()
    patch.note_kill_all()
  elseif parameters.arpeggiate() == "scale_up" then
    -- arpeggiate.set_position(scale.length)
    start_arppegiate()
  elseif parameters.arpeggiate() == "scale_down" then
    -- arpeggiate.set_position(1)
    patch.note_off_all()
  else
    arpeggiate.reset()
    patch.note_off_all()
  end
  params:write()
end

function pitch_off(f, deg)
  display_orig.degree_off(deg)
  g.led_off(f)
  patch.pitch_off(f)
  midi_out.note_off_pitch_bend(f)
  -- midi_out.all_notes_off()
  redraw()
end

function pitches_off()
  for f,i in pairs(pitches_on) do
    if i ~= nil then
      pitches_on[f] = nil
      pitch_off(f, i)
      midi_out.note_off_pitch_bend(f)
    end
  end
  display_orig.all_degrees_off()
  redraw()
end

function pitch_on(f, vel, deg)
  display_orig.degree_on(deg)
  g.led_on(f)
  patch.pitch_on(f, vel)
  midi_out.note_on_pitch_bend(f)
  redraw()
end

function pitch_on_position(i)
  local f = pitches:octdegfreq(params:get("pitfalls_octave"), i)
  pitches_on[f] = i
  pitch_on(f, 120, i)
end
