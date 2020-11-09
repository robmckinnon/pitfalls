local fn = {}

function fn.debug(bool)
  if bool == nil then return debug end
  debug = bool
  return debug
end

function fn.dprint(t, s)
  if fn.debug() then
    print(t, s)
  end
end

function fn.gcd(a,b)
  while b~=0 do
    a,b=b,a%b
  end
  return math.abs(a)
end

function fn.midi_to_hz(note)
  return (440/32) * (2 ^ ((note - 9) / 12))
end

function fn.nearest_interval(v, ratiointervals)
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

function fn.nearest_interval2(v, ratiointervals)
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

function fn.printp(t)
  for i, v in pairs(t) do
    print(i, v)
  end
end

function fn.printip(t)
  for i, v in ipairs(t) do
    print(i, v)
  end
end

function fn.ratio(division, edivisions)
  if division == 0 then
    return 1
  else
    return (2 ^ (division / edivisions))
  end
end

function fn.get_freq(base_freq, edo, index, oct, base_octave)
  local f = base_freq * fn.ratio(index-1, edo)
  if (oct < base_octave) then
    f = f / (2 ^ (base_octave - oct))
  elseif (oct > base_octave) then
    f = f * (2 ^ (oct - base_octave))
  end
  return f
end

function fn.wrap(t, n)
  for i = 1, n do
    table.insert(t, 1, table.remove( t, #t ))
  end
end

function fn.tablelength(t)
  local count = 0
  for i,v in pairs(t) do
    if v ~= nil then
      count = count + 1
    end
  end
  return count
end

function fn.sortedkeys(t)
  local tkeys = {}
  for k in pairs(t) do table.insert(tkeys, k) end
  table.sort(tkeys)
  return tkeys
end

-- http://tonalsoft.com/enc/t/tredek.aspx
function tredek()
  return 2 ^ (1/270)
end

return fn
