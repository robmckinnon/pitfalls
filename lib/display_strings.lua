local display = {}

local s = screen

function display.redraw(base_freq, edit, octave, step_position, scale, intervals, midi_start, is_patch_view)
  s.clear()
  display_orig.pageline(3)
  display_orig.draw_arp_symbol()
  display.drawsteps(edit, step_position, scale)
  display.drawintervals(scale, intervals)
  display_orig.drawname(edit, scale, 5, is_patch_view)
  display_orig.drawLs(edit, scale)
  display_orig.drawmidi(edit, scale, midi_start)
  display_orig.drawtuning(base_freq, edit, scale)
  display_orig.drawscalesize(edit, scale)
  display_orig.drawedo(scale)
  display_orig.drawtonic(edit, scale)
  display_orig.drawmode(edit, scale)
  display_orig.drawoctave(edit, octave, scale)
  s.update()
end

local INTERVAL_WIDTH = 80
local MAX_H = 80
local INTERVAL_HEIGHT = 4
local STEP_WIDTH = 7
local STEP_MARGIN = 1

function display.drawsteps(edit, step_position, scale)
  local x, y
  screen.font_size(8)
  for i = 1,scale.length do
    x = (i-1)*STEP_WIDTH + STEP_MARGIN
    y = 12
    pf.text(pf.level_step(i, edit, scale),
        x, y,
        scale:step_size(i)
    )
    display_orig.arp_position(i, step_position)
  end
  screen.font_size(8)
end

function display.drawintervals(scale, intervals)
  if scale.length > 9 then
    INTERVAL_HEIGHT = 4
  elseif scale.length > 7 then
    INTERVAL_HEIGHT = 5
  elseif scale.length > 5 then
    INTERVAL_HEIGHT = 6
  else
    INTERVAL_HEIGHT = 7
  end
  local err, x, y, lab, level
  x = INTERVAL_WIDTH + 5
  y = INTERVAL_HEIGHT + 14
  pf.line_rel(
    display_orig.is_degree_on(1) and 8 or (display_orig.any_degrees_on() and 3 or 5),
    0,MAX_H-y,     util.clamp(x-1,0,x),0)

  for i = 2,scale.length do
    -- x = math.floor(intervals:ratio(i) * INTERVAL_WIDTH) - INTERVAL_WIDTH

    x = math.floor((1 / intervals:ratio(i)) * INTERVAL_WIDTH * 2) - INTERVAL_WIDTH + 5
    y = (i*INTERVAL_HEIGHT) + 14
    err = intervals:interval_error(i)
    lab = intervals:uniq_interval_label(i)
    level = display_orig.is_degree_on(i) and pf.level_int(err) + 2 or (display_orig.any_degrees_on() and 1 or pf.level_int(err))

    pf.line_rel(lab == "" and (display_orig.is_degree_on(i) and level or 1) or level,
      0,MAX_H-y,
      util.clamp(x-1, 0, x),0)
    -- pf.line_rel(5, x+28,y-1, 0,3)

    if (err ~= nil) then
      pf.text(
         level,
         x, MAX_H-y+2,
         lab
      )
    end
  end
  return nil
end

function display.edit_position(edit, scale)
  return display_orig.edit_position(edit, scale)
end

return display
