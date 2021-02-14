local display = {}

local s = screen

function display.redraw(base_freq, edit, octave, position, scale, intervals, midi_start)
  s.clear()
  display.drawsteps(edit, position, scale)
  -- display.drawintervals(scale, intervals)
  display.draw_step_bars(scale, intervals)

  display_orig.drawname(edit, scale, 5)
  display_orig.drawLs(edit, scale)
  display_orig.drawmidi(edit, scale, midi_start)
  display_orig.drawtuning(base_freq, edit, scale)
  display_orig.drawscalesize(edit, scale)
  display_orig.drawedo(scale)
  display_orig.drawtonic(edit, scale)
  display_orig.drawmode(edit, scale)
  display_orig.drawoctave(edit, octave, scale)

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
      -- print(x)
      -- print(y)
    end
    pf.text(pf.level_step(i, edit, scale),
        x, y,
        scale:step_size(i)
    )
    display_orig.arp_position(i, position)
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

function display.edit_position(edit, scale)
  return display_orig.edit_position(edit, scale)
end

return display
