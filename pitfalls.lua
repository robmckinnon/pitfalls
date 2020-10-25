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
-- LLsLLLs  L : 2  s : 1  base: C
--
-- A 19 EDO, 7 note scale is:
-- LLsLLLs  L : 3  s : 2
--
-- Play scale keyboard on grid.
--
-- E1 change cutoff filter
-- E2 change value
-- E3 select step or parameter
-- K1
-- K2 toggle arpeggiator
-- K3 toggle scale mode
--
-- [0] http://anaphoria.com/
--            wilsonintroMOS.html
-- .................................................
--
-- pitfalls v0.1.0 "einfach einem" release
-- copyright 02020 robmckinnon
-- GNU GPL v3.0

include("pitfalls/lib/includes")
fn.debug(false)

local run = false
local position = 1

local scale = nil
local intervals = nil
local pitches = nil

local edit = 1
local MAX_STEPS = 16
local MIN_STEPS = 3

function metrofast() counter.time = 0.125 end
function metroslow() counter.time = 0.25 end
function positionrand() position = math.random(scale.length) end

local change = {}

function init()
  local sequence = params:get("sequence")
  scale = Scale:new(2, 1, sequence)
  scale:update_edo()
  g.init()

  params:set_action("cutoff", function(x) engine.cutoff(x) end)
  params:set_action("midi_start", function(x) update_pitches() end)
  params:set_action("tuning", function(x) update_pitches() end)

  update_pitches()
  display.drawintervals(scale, intervals)

  counter = metro.init(count, 0.125, -1)
  if run then
    counter:start()
  end
end

function count()
  position = (position % scale.length) + 1
  engine.hz(pitches:octdegfreq(params:get("octave"), position))
  redraw()
end

function redraw()
  display.redraw(params:get("tuning"), edit, params:get("octave"), position, scale, intervals, params:get("midi_start"))
end

function key(n,z)
  if n == 3 and z == 1 then
    -- increment_mode()
  elseif n == 2 and z == 1 then
    toggle_arppegiate()
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

function update_pitches()
  intervals = Intervals:new(scale)
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
  edit = util.clamp(edit + d, 1, scale.length + display.o_input())
  redraw()
end

function change.step(d)
  if scale:change_step(d, edit) then
    params:set("sequence", scale:sequence(), true)
    update_pitches()
  end
end

function change.tonic(d)
  if scale:change_tonic(d) then
    update_pitches()
  end
end

function change.mode(d)
  if scale:change_mode(d) then
    update_pitches()
  end
end

function change.small(d)
  if scale:change_small(d) then
    update_pitches()
  end
end

function change.large(d)
  if scale:change_large(d) then
    update_pitches()
  end
end

function change.scale_size(d)
  if scale:change_length(d) then
    if d == 1 then
      edit = util.clamp(edit + 1, 1 + display.n_input(), MAX_STEPS + display.n_input())
    end
    if d == -1 then
      edit = util.clamp(edit - 1, MIN_STEPS + display.n_input(), edit)
    end
    update_pitches()
  end
end
