-- "item: There are pitfalls in
--      using equal division
--      within which to calculate
--      2-interval-patterns which
--      the unwary traveler will
--      most certainly fall into."
--                -- Erv Wilson [0]
--
-- Define & play your own
-- microtonal scales.
--
-- Set interval structure as a
-- sequence of large (L)
-- and small (s) steps.
--
-- e.g.
-- C Major diatonic is:
--   LLsLLLs  L: 2  s: 1  base: C
--
-- A 19 EDO, 7 note scale is:
--   LLsLLLs  L: 3  s: 2
--
-- Play scale keyboard on grid.
--
-- E1 change cutoff filter
-- E2 change value
-- E3 select step or parameter
-- K1
-- K2 toggle arpeggiator
-- K3
--
-- [0] http://anaphoria.com/
--            wilsonintroMOS.html
-- .................................................................
--
-- pitfalls v0.1.0 "einfach einem" release
-- copyright 02020 robmckinnon
-- GNU GPL v3.0
-- .................................................................
--

include("pitfalls/lib/includes")
pf.debug(false)

local run = false
local position = 1

local scale = nil
local intervals = nil
local pitches = nil

local edit = 1

function metrofast() counter.time = 0.125 end
function metroslow() counter.time = 0.25 end
function positionrand() position = math.random(scale.length) end

local change = {}
local arpeggiate = {}

local display = display_circle

local s = screen
local PI = 3.14159265359
local C = 2*PI
local qC = PI / 2
local cx = (128-64)/2
local cy = (64+16)/2

function display.draw_step_bars(scale, intervals)
  local steps = scale.length
  local radians,err,level,radius,ratio,val
  local tC
  if (scale.tonic == 1 or scale.tonic == scale.edivisions) then
    tC = 0
  else
    tC = (scale.tonic / scale.edivisions) * C
  end
  s.move(cx, cy)
  s.line_width(1)
  for i=1,steps do
    ratio = intervals:ratio(i)
    err = intervals:interval_error(i)
    level = pf.level_int(err)
    s.level(level > 2 and level - 1 or 1)
    radians = ratio * C - qC + tC

    s.arc(cx, cy, 22, radians, radians)
    s.stroke()

    val = radians % C
    radius = (val > 3.6) and 23 or ((val > 2.25) and 32 or 23)
    s.arc(cx, cy, radius, radians, radians)
    if (err ~= nil and err < 0.01) then
      s.level(level)
      -- s.text(string.format("%.3f", val))
      s.text(intervals:uniq_interval_label(i))
    end
    s.move(cx, cy)
  end
end

function init()
  local sequence = params:get("sequence")
  scale = Scale:new(2, 1, sequence)
  scale:update_edo()

  params:set_action("cutoff", function(x) engine.cutoff(x) end)
  params:set_action("midi_start", function(x) update_pitches(false) end)
  params:set_action("tuning", function(x) update_pitches(false) end)
  params:set_action("arpeggiate", function(x) update_arpeggiate() end)

  g.init()
  update_pitches(true)
  display.drawintervals(scale, intervals)

  counter = metro.init(count, 0.125, -1)
  if run then
    counter:start()
  end
end

function count()
  arpeggiate[parameters.arpeggiate()]()
  redraw()
end

function redraw()
  display.redraw(params:get("tuning"), edit, params:get("octave"), position, scale, intervals, params:get("midi_start"))
end

function key(n,z)
  if n == 3 and z == 1 then
    -- increment_mode()
    if display == display_strings then
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
    params:delta("cutoff", d)
  elseif n == 2 then
    change.edit_position(d)
  elseif n ==3 then
    change_value(d)
  end
end

function toggle_arppegiate()
  if run then
    run = false
    counter:stop()
  else
    run = true
    counter:start()
  end
end

function update_pitches(update_intervals)
  if update_intervals then
    intervals = ScaleIntervals:new(scale)
    chord_positions = {}
  end
  pitches = Pitches:new(scale, intervals, params:get("tuning"), params:get("midi_start"))
  g.update_grid(scale, intervals, pitches)
end

function change_value(d)
  local id = display.edit_position(edit, scale)
  if pcall(params.get, params, id) then
    params:delta(id, d)
  else
    change[display.edit_position(edit, scale)](d)
  end
  redraw()
end

function change.edit_position(d)
  edit = util.clamp(edit + d, 1, scale.length + display_orig.o_input())
  if (edit - scale.length) == display_orig.m_input() then
    if scale:has_medium() == false then
      edit = edit + d
    end
  end
  redraw()
end


function change.step(d)
  if scale:change_step(d, edit) then
    params:set("sequence", scale:sequence(), true)
    update_pitches(true)
  end
end

function change.tonic(d)
  if scale:change_tonic(d) then
    update_pitches(false)
  end
end

function change.mode(d)
  if scale:change_mode(d) then
    update_pitches(true)
  end
end

function change.small(d)
  if scale:change_small(d) then
    update_pitches(true)
  end
end

function change.medium(d)
  if scale:change_medium(d) then
    update_pitches(true)
  end
end

function change.large(d)
  if scale:change_large(d) then
    update_pitches(true)
  end
end

function change.scale_size(d)
  if scale:change_length(d) then
    if d == 1 then
      edit = util.clamp(edit + 1, 1 + display_orig.n_input(), scale.max_steps + display_orig.n_input())
    end
    if d == -1 then
      edit = util.clamp(edit - 1, scale.min_steps + display_orig.n_input(), edit)
    end
    update_pitches(true)
  end
end

function update_arpeggiate(x)
  print(parameters.arpeggiate())
  if parameters.arpeggiate() == "off" then
    run = false
    counter:stop()
  elseif parameters.arpeggiate() == "scale_up" then
    position = scale.length
    run = true
    counter:start()
  elseif parameters.arpeggiate() == "scale_down" then
    position = 1
  else
    chord_positions = {}
    last_degree = nil
    remaining_positions = {}
  end
end

local pitches_on = {}

function pitches_off()
  for f,i in pairs(pitches_on) do
    if i ~= nil then
      g.led_off(f)
      pitches_on[f] = nil
    end
  end
end

function pitch_on(i)
  local f = pitches:octdegfreq(params:get("octave"), i)
  g.led_on(f)
  pitches_on[f] = i
  engine.hz(f)
end

function arpeggiate.scale_up()
  position = (position % scale.length) + 1
  pitches_off()
  pitch_on(position)
end

function arpeggiate.scale_down()
  position = position - 1
  position = position < 1 and scale.length or position
  pitches_off()
  pitch_on(position)
end

local chord_positions = {}
local last_degree = nil
local remaining_positions = {}

function arpeggiate.chord()
  if pf.tablelength(chord_positions) == 0 then
    position = (position % scale.length) + 1
    print("+1", position)
    remaining_positions = {}
    local degree = position
    local matches = chords.match(intervals:interval_labels(degree))
    local values = {}
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
    pf.printp(chord_positions)
    last_degree = (degree % scale.length) + 1
    print('---', last_degree)
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
    pitch_on(position)
    local count = pf.tablelength(chord_positions)
    position = count > 0 and remaining_positions[1] or (position % scale.length) + 1
    pf.dprint(position)
  end
end

function arpeggiate.chords()
  position = math.random(scale.length)
  -- (position % scale.length) + 1
  if pf.tablelength(chord_positions) == 0 then
    local degree = position
    local matches = chords.match(intervals:interval_labels(degree))
    local values = {}
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
  end
  if chord_positions[position] ~= nil then
    local f = nil
    pitches_off()
    for i,v in pairs(chord_positions) do
      pitch_on(i)
      chord_positions[i] = nil
    end
  end
end
