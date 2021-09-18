local display = {}

-- reverse scale name
local R_INPUT = 1
-- number of notes
local N_INPUT = 2
-- L,M,s step sizes
local L_INPUT = 3
local M_INPUT = 4
local S_INPUT = 5
-- Base MIDI note
local B_INPUT = 6
-- Base freq Hz
local F_INPUT = 7
-- Tonic note
local T_INPUT = 8
-- Mode degree
local D_INPUT = 9
-- Octave
local O_INPUT = 10

-- Tempo division
local TD_INPUT = 11

-- Engine
local E_INPUT = 12
-- Patch
local P_INPUT = 13


local TOP = 13
local BOT = 28

local s = screen

function display.scale_name_input()
  return R_INPUT
end

function display.tempo_division_input()
  return TD_INPUT
end

function display.m_input()
  return M_INPUT
end

function display.n_input()
  return N_INPUT
end

function display.o_input()
  return O_INPUT
end

function display.engine_input()
  return E_INPUT
end

function display.patch_input()
  return P_INPUT
end

local degrees_on = {}

function display.degree_on(deg)
  degrees_on[deg] = true
end

function display.degree_off(deg)
  degrees_on[deg] = nil
end

function display.all_degrees_off()
  degrees_on = {}
end

function display.is_degree_on(deg)
  return degrees_on[deg] ~= nil
end

function display.pageline(pg)
  pf.line_rel((pg == 1 and 3 or 1),     128, 1,     0,12)
  pf.line_rel((pg == 2 and 3 or 1),     128,17,     0,12)
  pf.line_rel((pg == 3 and 3 or 1),     128,33,     0,12)
  pf.line_rel((pg == 4 and 3 or 1),     128,49,     0,12)
end

function display.redraw(base_freq, edit, octave, position, scale, intervals, midi_start, is_patch_view)
  s.clear()
  display.pageline(2)
  display.draw_arp_symbol()
  display.drawsteps(edit, position, scale)
  local chords_on = display.drawintervals(scale, intervals)

  if chords_on == nil then
    display.drawname(edit, scale, BOT + 3, 0, is_patch_view)
  else
    display.drawchords(chords_on, 0, 31)
  end

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

--                  {"off", "scale_up", "scale_down", "chord", "chords"}
local arp_symbols = {   "",        ">",          "<",     "*",      "+"}

function display.draw_arp_symbol()
  if params:get("arpeggiate") ~= 0 then
    pf.text(4,
        0, 5,
        arp_symbols[params:get("arpeggiate")]
      )
  end
end

local ADJ = -8
local STEP_WIDTH = 7

function display.drawintervals(scale, intervals)
  local err,x,y,k, intervals_on, chords_on

  local lowest_deg = pf.lowest(degrees_on)
  if lowest_deg ~= nil then
    -- print(lowest_deg)
    local labs = intervals:interval_labels(lowest_deg)
    intervals_on = {}
    for d in pairs(degrees_on) do
      k = (d - lowest_deg) + 1
      if k ~= 1 then
        -- print(k)
        intervals_on[d] = labs[k]
        -- pf.tprint(intervals_on)
      end
    end
    local matches = chords.match(intervals_on)
    if pf.tablelength(matches) > 0 then
      -- pf.tprint(matches)
      chords_on = matches
    end
  end

  local offset = 0
  local i, col, row

  for d = 2,scale.length do
    err = intervals:interval_error(d)

    if (err == nil or intervals:interval_label(d) == "P1") then
      if scale.length > 11 and d == 2 then
        offset = -1
      end
    else
      i = d + offset
      x = i*STEP_WIDTH -11
      y = ( (i % 2 == 0) and BOT or TOP ) + ADJ
      pf.text(
        pf.level_int(err),
        x, y,
        intervals:uniq_interval_label(d)
      )
      col = i < 7 and 1 or 2
      row = (col == 1) and i - 1 or i - 6
      if intervals_on ~= nil and intervals_on[d] ~= nil then
        pf.text(
          pf.level_int(err),
          ( (col == 1) and 0 or 40 ),
          ( 34 + row * 6 ),
          intervals_on[d]
        )
      elseif intervals:interval_ratio(d) ~= nil and (intervals_on == nil or pf.tablelength(intervals_on) == 0) then
        pf.text(
          pf.level_int(err),
          ( (col == 1) and 0 or 40 ),
          ( 34 + row * 6 ),
          intervals:interval_label(d)
        )

        pf.text(
          pf.level_int(err),
          pad_px_interval_ratio(intervals, d) + ( (col == 1) and 13 or 52 ),
          ( 34 + row * 6 ),
          pad_interval_ratio(intervals, d)
        )
      end
    end
  end
  return chords_on
end

function pad_px_interval_ratio(intervals, i)
  if intervals:interval_nominator(i) == 11 then
    return 3
  elseif intervals:interval_nominator(i) < 20 then
    return 1
  else
    return 0
  end
end

function pad_interval_ratio(intervals, i)
  if intervals:interval_nominator(i) < 10 then
    return " "..intervals:interval_ratio(i)
  else
    return intervals:interval_ratio(i)
  end
end

function display.arp_position(i, position)
  if i == position then
    pf.line_rel(2, i*STEP_WIDTH -7, 22 + ADJ, 6, 0)
  end
end

function display.drawsteps(edit, position, scale)
  local x,y
  for i = 1,scale.length do
    x = i*STEP_WIDTH -8 + 2
    y = 20 + ADJ
    if i == 1 then
      -- print(x)
      -- print(y)
    end
    pf.text(pf.level_step(i, edit, scale),
      x, y,
      scale:step_size(i)
    )
    display.arp_position(i, position)
  end
end

function first_key(t)
  for k in pairs(t) do return k end
end

function display.drawchords(chords_on, x, y)
  -- pf.tprint(chords_on)
  pf.text(13, x, y, first_key(chords_on).." chord")
end

function display.drawname(edit, scale, y, x, is_patch_view)
  local name = nil
  local m = named_scales.lookup[scale.length]
  if m ~= nil then
    m = m[scale.large]
    if m ~= nil then
      m = m[scale.small]
      if m ~= nil then
        if scale:has_medium() then
          if m[scale.medium] ~= nil then
            name = m[scale.medium][scale:sequence()]
          end
        else
          name = m[scale:sequence()]
        end
        if name ~= nil then
          name = named_scales.names[name] or name
        end
      end
    end
  end
  name = name or "-"
  scale_name = name
  local limit = is_patch_view and 120 or 74
  local wlimit = is_patch_view and 120 or 80
  if name ~= "-" then
    local edoname = name.." "..scale.edivisions.."EDO"
    scale_no_index = 1
    local names = reverse_name.no_names[scale.length]
    while scale_no_index < (#names) and (names[scale_no_index] ~= edoname) do
      scale_no_index = scale_no_index + 1
    end
    if is_patch_view then
      name = name
    else
      name = pf.string_width(s, name, limit)
    end
    if x ~= 0 then
      x = wlimit - s.text_extents(name)
    end
    pf.itext(R_INPUT, edit, scale,
      x, y,
      name)
  else
    scale_no_index = 0
    if is_patch_view then
      name = name
    else
      name = pf.string_width(s, name, limit)
    end
    if x ~= 0 then
      x = wlimit - s.text_extents(name)
    end
    pf.itext(R_INPUT, edit, scale,
      x, y,
      name)
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

function display.drawscalesize(edit, scale)
  pf.itext(N_INPUT, edit, scale,
    MAR1,17+A - 2,
    "size: "..scale.length)
end

function display.drawLs(edit, scale)
  if scale:has_medium() then
    pf.itext(L_INPUT, edit, scale,
      MAR1-(MAR3+5 - MAR1), 25+A - 1,
      "L"..scale.large)

    pf.itext(M_INPUT, edit, scale,
      MAR1, 25+A - 1,
      "M"..scale.medium)
  else
    pf.itext(L_INPUT, edit, scale,
      MAR1, 25+A - 1,
      "L"..scale.large)
  end

  pf.itext(S_INPUT, edit, scale,
    MAR3+5, 25+A - 1,
    "s"..scale.small)
end

function display.drawmidi(edit, scale, midi_start)
  pf.itext(B_INPUT, edit, scale,
    MAR1,33+A,
    "fixed: "..note[midi_start])
end

function display.drawedo(scale)
  pf.text(2,
    MAR1,9+A - 2,
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
  pf.itext(D_INPUT, edit, scale,
    MAR1,57+A,
    "mode: "..scale.mode)
end

function display.drawoctave(edit, octave, scale)
  pf.itext(O_INPUT, edit, scale,
    MAR1,65+A,
    "oct.: "..octave)
end

local position = {
  [R_INPUT] = "scale_name",
  [N_INPUT] = "scale_size",
  [L_INPUT] = "large",
  [M_INPUT] = "medium",
  [S_INPUT] = "small",
  [B_INPUT] = "pitfalls_midi_no_start",
  [F_INPUT] = "pitfalls_tuning",
  [T_INPUT] = "tonic",
  [D_INPUT] = "mode",
  [O_INPUT] = "octave",
  [TD_INPUT] = "tempo_div",
  [E_INPUT] = "engine",
  [P_INPUT] = "patch"
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
