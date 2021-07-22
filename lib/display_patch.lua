local display = {}
local s = screen

function display.redraw(base_freq, edit, octave, position, scale, intervals, midi_start)
  s.clear()
  display_orig.drawsteps(edit, position, scale)
  display.drawpatch(edit)
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

function display.drawpatch(edit)
  pf.text(2,0,25,engine.name)
  if (engine.name == "MxSamples") then
    pf.text(2,0,36,mx_sample)
  end
end

function display.edit_position(edit, scale)
  return display_orig.edit_position(edit, scale)
end

return display