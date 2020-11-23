local display = {}

local L_INPUT = 1
local S_INPUT = 2
local B_INPUT = 3
local N_INPUT = 4
local F_INPUT = 5
local T_INPUT = 6
local M_INPUT = 7
local O_INPUT = 8

local TOP = 13
local BOT = 28

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

local ADJ = -8
local STEP_WIDTH = 7

function display.drawintervals(scale, intervals)
  local err,x,y

  for i = 2,scale.length do
    err = intervals:interval_error(i)
    if (err ~= nil) then
      x = i*STEP_WIDTH -11
      y = ( (i % 2 == 0) and BOT or TOP ) + ADJ
      pf.text(
        pf.level_int(err),
        x, y,
        intervals:uniq_interval_label(i)
      )
    end
  end
end

function display.drawsteps(edit, position, scale)
  local x,y
  for i = 1,scale.length do
    x = i*STEP_WIDTH -8 + 2
    y = 20 + ADJ
    if i == 1 then
      print(x)
      print(y)
    end
    pf.text(pf.level_step(i, edit, scale),
      x, y,
      scale:step_size(i)
    )
    if i == position then
      pf.line_rel(2, i*STEP_WIDTH -8, 23 + ADJ, 6, 0)
    end
  end
end

local note = {
  [60] = "C",
  [61] = "C#",
  [62] = "D",
  [63] = "D#",
  [64] = "E",
  [65] = "F",
  [66] = "F#",
  [67] = "G",
  [68] = "G#",
  [69] = "A",
  [70] = "A#",
  [71] = "B"
}

local MAR = 87
local MAR0 = MAR-10
local MAR1 = MAR
local MAR2 = MAR+10
local MAR3 = MAR2+7

local A = -2
function display.drawLs(edit, scale)
  pf.itext(L_INPUT, edit, scale,
    MAR1,17+A,
    "L"..scale.large)

  pf.itext(S_INPUT, edit, scale,
    MAR3+5,17+A,
    "s"..scale.small)
end

function display.drawmidi(edit, scale, midi_start)
  pf.itext(B_INPUT, edit, scale,
    MAR1,25+A,
    "fixed: "..note[midi_start])
end

function display.drawscalesize(edit, scale)
  pf.itext(N_INPUT, edit, scale,
    MAR1,33+A,
    "size: "..scale.length)
end

function display.drawedo(scale)
  pf.text(2,
    MAR1,9+A,
    scale.edivisions.." EDO")
end

function display.drawtuning(tuning, edit, scale)
  pf.itext(F_INPUT, edit, scale,
    MAR1,41+A,
    string.format("%.1f",tuning).." Hz")
end

function display.drawtonic(edit, scale)
  pf.itext(T_INPUT, edit, scale,
    MAR1,49+A,
    "tonic: "..scale.tonic)
end

function display.drawmode(edit, scale)
  pf.itext(M_INPUT, edit, scale,
    MAR1,57+A,
    "mode: "..scale.mode)
end

function display.drawoctave(edit, octave, scale)
  pf.itext(O_INPUT, edit, scale,
    MAR1,65+A,
    "oct.: "..octave)
end

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

function display.edit_position(edit, scale)
  local e = edit - scale.length
  if e > 0 then
    return position[e]
  else
    return "step"
  end
end

return display
