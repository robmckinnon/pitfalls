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

return pf
