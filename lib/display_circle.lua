local display = {}

local L_INPUT = 1
local S_INPUT = 2
local B_INPUT = 3
local N_INPUT = 4
local F_INPUT = 5
local T_INPUT = 6
local M_INPUT = 7
local O_INPUT = 8

local s = screen

function display.n_input()
  return display_orig.n_input()
end

function display.o_input()
  return display_orig.o_input()
end

function display.redraw(base_freq, edit, octave, position, scale, intervals, midi_start)
  s.clear()
  display.drawsteps(edit, position, scale)
  -- display.drawintervals(scale, intervals)
  display.draw_step_bars(scale, intervals)
  display.drawLs(edit, scale)
  display.drawmidi(edit, scale, midi_start)
  display.drawtuning(base_freq, edit, scale)
  display.drawscalesize(edit, scale)
  display.drawedo(scale)
  display.drawtonic(edit, scale)
  display.drawmode(edit, scale)
  display.drawoctave(edit, octave, scale)

  -- s.move(0,0)
  -- s.line_width(1)
  -- s.line(128,1)
  -- s.line_rel(0,63)
  -- s.line_rel(-127,0)
  -- s.line_rel(0,-63)

  s.update()
end

local INTERVAL_WIDTH = 88
local INTEVAL_HEIGHT = 4
local STEP_MARGIN = 1
local STEP_WIDTH = 7
local PI = 3.14159265359

function display.drawsteps(edit, position, scale)
  local x, y
  screen.font_size(8)
  for i = 1,scale.length do
    x = (i-1)*STEP_WIDTH + STEP_MARGIN
    y = 12
    if i == 1 then
      print(x)
      print(y)
    end
    pf.text(pf.level_step(i, edit, scale),
        x, y,
        scale:step_size(i)
    )
  end
  screen.font_size(8)
end

function display.drawintervals(scale, intervals)
  local err, x, y
  for i = 2,scale.length do
    x = math.floor(intervals:ratio(i) * INTERVAL_WIDTH) - INTERVAL_WIDTH
    y = (i*INTEVAL_HEIGHT) + 14
    pf.line_rel(1, 0,y,     x,0)
    -- pf.line_rel(5, x+28,y-1, 0,3)

    err = intervals:interval_error(i)
    if (err ~= nil) then
      pf.text(
         pf.level_int(err),
         x, y+2,
         intervals:interval_label(i)
      )
    end
  end
end

local MAR = 87
local MAR0 = MAR-10
local MAR1 = MAR
local MAR2 = MAR+10
local MAR3 = MAR2+7

function display.drawLs(edit, scale)
  display_orig.drawLs(edit, scale)
  -- pf.itext(L_INPUT, edit, scale,
  --   MAR0,9,
  --   "L: "..scale.large)

  -- pf.itext(S_INPUT, edit, scale,
  --   MAR0,17,
  --   "s: "..scale.small)
end

function display.drawmidi(edit, scale, midi_start)
  display_orig.drawmidi(edit, scale, midi_start)
  -- pf.itext(B_INPUT, edit, scale,
  --   MAR0,25,
  --   "b: "..pf.note_label(midi_start))
end

function display.drawscalesize(edit, scale)
  display_orig.drawscalesize(edit, scale)
  -- pf.itext(N_INPUT, edit, scale,
  --   MAR0,33,
  --   "n: "..scale.length)
end
-- 29

function display.drawtuning(tuning, edit, scale)
  display_orig.drawtuning(tuning, edit, scale)
  -- pf.itext(F_INPUT, edit, scale,
  --   MAR3,9,
  --   string.format("%.0f",tuning).."Hz")
end

function display.drawtonic(edit, scale)
  display_orig.drawtonic(edit, scale)
  -- pf.itext(T_INPUT, edit, scale,
  --   MAR3,17,
  --   "t: "..scale.tonic)
end

function display.drawmode(edit, scale)
  display_orig.drawmode(edit, scale)
  -- pf.itext(M_INPUT, edit, scale,
  --   MAR3,25,
  --   "m: "..scale.mode)
end

function display.drawoctave(edit, octave, scale)
  display_orig.drawoctave(edit, octave, scale)
  -- pf.itext(O_INPUT, edit, scale,
  --   MAR3,33,
  --   "o: "..octave)
end

function display.drawedo(scale)
  display_orig.drawedo(scale)
  -- pf.text(2,
  --   90,55,
  --   scale.edivisions.." EDO")
end

function display.edit_position(edit, scale)
  return display_orig.edit_position(edit, scale)
end

return display
