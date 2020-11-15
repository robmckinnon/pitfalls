local display = {}

local L_INPUT = 1
local S_INPUT = 2
local B_INPUT = 3
local N_INPUT = 4
local F_INPUT = 5
local T_INPUT = 6
local M_INPUT = 7
local O_INPUT = 8

local position = {
  [L_INPUT] = "large",
  [S_INPUT] = "small",
  [B_INPUT] = "midi_start",
  [N_INPUT] = "scale_size",
  [F_INPUT] = "tuning",
  [T_INPUT] = "tonic",
  [M_INPUT] = "mode",
  [O_INPUT] = "octave"
}

local s = screen

function display.n_input()
  return N_INPUT
end

function display.o_input()
  return O_INPUT
end

function display.redraw(base_freq, edit, octave, position, scale, intervals, midi_start)
  s.clear()
  display.drawsteps(edit, position, scale)
  display.drawintervals(scale, intervals)
  display.drawLs(edit, scale)
  display.drawmidi(edit, scale, midi_start)
  display.drawtuning(base_freq, edit, scale)
  display.drawscalesize(edit, scale)
  display.drawedo(scale)
  display.drawtonic(edit, scale)
  display.drawmode(edit, scale)
  display.drawoctave(edit, octave, scale)
  s.update()
end

function display.drawintervals(scale, intervals)
  local err, x, y
  for i = 2,scale.length do
    x = math.floor(intervals:ratio(i) * 100) - 100
    y = (i)*4
    pf.line_rel(1, 8,y,     x,0)
    -- pf.line_rel(5, x+28,y-1, 0,3)

    err = intervals:interval_error(i)
    if (err ~= nil) then
      pf.text(
         pf.level_int(err),
         x+8, y+2,
         intervals:interval_label(i)
      )
    end
  end
end

function display.drawsteps(edit, position, scale)
  local x, y
  screen.font_size(7)
  for i = 1,scale.length do
    y = i*4-2
    -- pf.line_rel(1, 28, y, 99, 0)
    x = (i % 2 == 0) and 4 or 0
    pf.text(pf.level_step(i, edit, scale),
       x, y+2,
       scale:step_size(i)
    )
    -- if i == position then
    --   line_rel(2, i*8-8, 23, 6, 0)
    -- end
  end
  screen.font_size(8)
end

local MAR = 100
function display.drawLs(edit, scale)
  pf.itext(L_INPUT, edit, scale,
    MAR,13,
    "L: "..scale.large)

  pf.itext(S_INPUT, edit, scale,
    MAR,22,
    "s: "..scale.small)
end

function display.drawmidi(edit, scale, midi_start)
  pf.itext(B_INPUT, edit, scale,
    MAR,29,
    "b: "..pf.note_label(midi_start))
end

function display.drawscalesize(edit, scale)
  pf.itext(N_INPUT, edit, scale,
    MAR,36,
    "n: "..scale.length)
end

function display.drawedo(scale)
  pf.text(2,
    90,6,
    "EDO: "..scale.edivisions)
end

function display.drawtuning(tuning, edit, scale)
  pf.itext(F_INPUT, edit, scale,
    MAR,43,
    string.format("%.0f",tuning).."H")
end

function display.drawtonic(edit, scale)
  pf.itext(T_INPUT, edit, scale,
    MAR,50,
    "t: "..scale.tonic)
end

function display.drawmode(edit, scale)
  pf.itext(M_INPUT, edit, scale,
    MAR,57,
    "m: "..scale.mode)
end

function display.drawoctave(edit, octave, scale)
  pf.itext(O_INPUT, edit, scale,
    MAR,64,
    "o: "..octave)
end

function display.edit_position(edit, scale)
  local e = edit - scale.length
  if e > 0 then
    return position[e]
  else
    return "step"
  end
end

return display
