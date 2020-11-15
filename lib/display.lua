local display = {}

local L_INPUT = 1
local S_INPUT = 2
local B_INPUT = 3
local N_INPUT = 4
local F_INPUT = 5
local T_INPUT = 6
local M_INPUT = 7
local O_INPUT = 8

local TOP = 12
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

function display.drawintervals(scale, intervals)
  local err = nil
  for i = 2,scale.length do
    y = (i % 2 == 0 and BOT) or TOP
    s.move(i*8-10,y)
    err = intervals:interval_error(i)
    if (err ~= nil) then
      if (err > 0.005) then
        s.level(1)
      elseif (err > 0.0025) then
        s.level(2)
      elseif (err > 0.00125) then
        s.level(3)
      elseif (err > 0.000625) then
        s.level(4)
      else
        s.level(5)
      end
      s.text(intervals:interval_label(i))
    end
  end
end

function line_rel(l,x,y,dx,dy)
  s.level(l)
  s.move(x, y)
  s.line_rel(dx,dy)
  s.stroke()
end

function itext(input, edit, scale, x, y, t)
  text(
    (edit == scale.length + input) and 15 or 2,
    x, y,
    t
  )
end

function text(l,x,y,t)
  s.level(l)
  s.move(x,y)
  s.text(t)
end

function display.drawsteps(edit, position, scale)
  local l
  for i = 1,scale.length do
    l = (i == edit) and 15 or (
      (edit > scale.length) and 4 or 2)

    text(l,
      i*8-8 + 2, 20,
      scale:step_size(i)
    )
    if i == position then
      line_rel(2, i*8-8, 23, 6, 0)
    end
  end
end

function display.drawLs(edit, scale)
  itext(L_INPUT, edit, scale,
    0, 40,
    "L : "..scale.large)

  itext(S_INPUT, edit, scale,
    0,50,
    "s : "..scale.small)
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

function display.drawmidi(edit, scale, midi_start)
  itext(B_INPUT, edit, scale,
    0,60,
    "base: "..note[midi_start])
end

function display.drawscalesize(edit, scale)
  itext(N_INPUT, edit, scale,
    41,40,
    "notes: "..scale.length)
end

function display.drawedo(scale)
  text(2,
    41,50,
    "EDO: "..scale.edivisions)
end

function display.drawtuning(tuning, edit, scale)
  itext(F_INPUT, edit, scale,
    41,60,
    string.format("%.0f",tuning).." Hz")
end

function display.drawtonic(edit, scale)
  itext(T_INPUT, edit, scale,
    84,40,
    "tonic: "..scale.tonic)
end

function display.drawmode(edit, scale)
  itext(M_INPUT, edit, scale,
    84,50,
    "mode: "..scale.mode)
end

function display.drawoctave(edit, octave, scale)
  itext(O_INPUT, edit, scale,
    84,60,
    "octave: "..octave)
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
