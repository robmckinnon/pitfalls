local display = {}
local s = screen

function display.redraw(base_freq, edit, octave, position, scale, intervals, midi_start, is_patch_view)
  s.clear()
  display_orig.pageline(4)
  display_orig.draw_arp_symbol()
  display_orig.drawsteps(edit, position, scale)
  display_orig.drawname(edit, scale, 5, is_patch_view)

  display.drawpatch(edit, scale)
  display.drawstepdivision(edit, scale)
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

function display.drawstepdivision(edit, scale)
  pf.itext(display_orig.tempo_division_input(), edit, scale,
    0, 25,
    "tempo division: "..params:get("pitfalls_tempo_div"))
end

function display.drawintervals(scale, intervals)
end

function display.drawpatch(edit, scale)
  pf.itext(display_orig.engine_input(), edit, scale, 0, 36, engine.name)
  if patch.is_mx_samples() then
    pf.itext(display_orig.patch_input(), edit, scale, 0, 47, patch.mx_sample())
  end
end

function display.edit_position(edit, scale)
  return display_orig.edit_position(edit, scale)
end

return display