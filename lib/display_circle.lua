local display = {}

local s = screen

function display.redraw(base_freq, edit, octave, step_position, scale, intervals, midi_start, is_patch_view)
  s.clear()
  display_orig.pageline(1)
  display_orig.draw_arp_symbol()
  display.drawsteps(edit, step_position, scale)
  -- display.drawintervals(scale, intervals)
  display.draw_step_bars(scale, intervals)

  display_orig.drawname(edit, scale, 5, is_patch_view)
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
local C = 2*PI
local qC = PI / 2
local cx = (128-64)/2
local cy = (64+16)/2

function display.drawsteps(edit, step_position, scale)
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

    display_orig.arp_position(i, step_position)
  end
  screen.font_size(8)
end

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
    level = display_orig.is_degree_on(i) and pf.level_int(err) + 2 or (display_orig.any_degrees_on() and 1 or pf.level_int(err))
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
  return nil
end

function display.edit_position(edit, scale)
  return display_orig.edit_position(edit, scale)
end

return display
