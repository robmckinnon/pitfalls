local pf = {}

function pf.debug(bool)
  if bool == nil then return debug end
  debug = bool
  return debug
end

function pf.dprint(t, s)
  if pf.debug() then
    print(t, s)
  end
end

function pf.gcd(a,b)
  while b~=0 do
    a,b=b,a%b
  end
  return math.abs(a)
end

function pf.midi_to_hz(note)
  return (440/32) * (2 ^ ((note - 9) / 12))
end

function pf.nearest_interval(v, ratiointervals)
  local min = 1
  local match = nil
  for ratio, labels in pairs(ratiointervals.list) do
    diff = math.abs( (ratio - v) / ratio )
    if diff < min then
      min = diff
      match = ratiointervals.key(ratio)
    end
  end
  return (min < 0.01 and match) or ""
end

function pf.nearest_interval2(v, ratiointervals)
  local min = 1
  local match = nil
  for ratio, labels in pairs(ratiointervals.list) do
    diff = math.abs( (ratio - v) / ratio )
    if diff < min then
      min = diff
      match = ratiointervals.key(ratio)
    end
  end
  return (min < 0.01 and {min,match}) or {nil,""}
end

function pf.printp(t)
  for i, v in pairs(t) do
    print(i, v)
  end
end

function pf.printip(t)
  for i, v in ipairs(t) do
    print(i, v)
  end
end

function pf.ratio(division, edivisions)
  if division == 0 then
    return 1
  else
    return (2 ^ (division / edivisions))
  end
end

function pf.get_freq(base_freq, edo, index, oct, base_octave)
  local f = base_freq * pf.ratio(index-1, edo)
  if (oct < base_octave) then
    f = f / (2 ^ (base_octave - oct))
  elseif (oct > base_octave) then
    f = f * (2 ^ (oct - base_octave))
  end
  return f
end

function pf.wrap(t, n)
  for i = 1, n do
    table.insert(t, 1, table.remove( t, #t ))
  end
end

function pf.tablelength(t)
  local count = 0
  for i,v in pairs(t) do
    if v ~= nil then
      count = count + 1
    end
  end
  return count
end

function pf.sortedkeys(t)
  local tkeys = {}
  for k in pairs(t) do table.insert(tkeys, k) end
  table.sort(tkeys)
  return tkeys
end

-- http://tonalsoft.com/enc/t/tredek.aspx
function pf.tredek()
  return 2 ^ (1/270)
end

function pf.tprint(t)
  tabutil.print(t)
end

local s = screen

function pf.level_int(err)
  if (err == nil or err > 0.005) then
    return 1
  elseif (err > 0.0025) then
    return 2
  elseif (err > 0.00125) then
    return 3
  elseif (err > 0.000625) then
    return 4
  else
    return 5
  end
end

function pf.level_step(i, edit, scale)
  if i == edit then
    return 15
  elseif (edit > scale.length) then
    return 4
  else
    return 2
  end
end

function pf.line_rel(l,x,y,dx,dy)
  s.level(l)
  s.move(x, y)
  s.line_rel(dx,dy)
  s.stroke()
end

function pf.itext(input, edit, scale, x, y, t)
  pf.text(
    (edit == scale.length + input) and 15 or 2,
    x, y,
    t
  )
end

function pf.text(l,x,y,t)
  s.level(l)
  s.move(x,y)
  s.text(t)
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

function pf.note_label(midi)
  return note[midi]
end

return pf
