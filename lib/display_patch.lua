local display = {}
local s = screen

function display.redraw(base_freq, edit, octave, position, scale, intervals, midi_start, is_patch_view)
  s.clear()
  display_orig.drawsteps(edit, position, scale)
  display.drawpatch(edit, scale)
  display_orig.drawname(edit, scale, 5, is_patch_view)
  -- display_orig.drawLs(edit, scale)
  -- display_orig.drawmidi(edit, scale, midi_start)
  -- display_orig.drawtuning(base_freq, edit, scale)
  -- display_orig.drawscalesize(edit, scale)
  -- display_orig.drawedo(scale)
  -- display_orig.drawtonic(edit, scale)
  -- display_orig.drawmode(edit, scale)
  -- display_orig.drawoctave(edit, octave, scale)
  s.update()
end

function display.drawintervals(scale, intervals)
end

function display.drawpatch(edit, scale)
  pf.itext(display_orig.engine_input(), edit, scale, 0, 25, engine.name)
  if patch.is_mx_samples() then
    pf.itext(display_orig.patch_input(), edit, scale, 0, 36, patch.mx_sample())
  end
end

function display.edit_position(edit, scale)
  return display_orig.edit_position(edit, scale)
end

return display