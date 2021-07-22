local display = {}
local s = screen

function display.redraw(base_freq, edit, octave, position, scale, intervals, midi_start)
  s.clear()
  -- display.drawsteps(edit, position, scale)
  -- display.drawintervals(scale, intervals)
  display_orig.drawname(edit, scale, 5)
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

function display.edit_position(edit, scale)
  return display_orig.edit_position(edit, scale)
end

return display