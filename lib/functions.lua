local pf = {}
local tab = require 'tabutil'

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

--- Check if a file or directory exists in this path
function pf.exists(file)
   local ok, err, code = os.rename(file, file)
   if not ok then
      if code == 13 then
         -- Permission denied, but it exists
         return true
      end
   end
   return ok, err
end

--- Check if a directory exists in this path
function pf.isdir(path)
   return pf.exists(path.."/")
end

function pf.gcd(a,b)
  while b~=0 do
    a,b=b,a%b
  end
  return math.abs(a)
end

local base = 440/32
function pf.midi_to_hz(note)
  return base * (2 ^ ((note - 9) / 12))
end

local denom = math.log(2)
function pf.hz_to_midi(freq)
  return 12 * (math.log(freq / 440.0) / denom) + 69
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
      match = ratio
    end
  end
  return (min < 0.01 and {min,match}) or {nil,nil}
end

function pf.string_width(s, text, width)
  local size = s.text_extents(text)
  while (size > width) do
    text = string.sub(text, 1, string.len(text) - 1)
    size = s.text_extents(text)
  end
  return text
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

local S = "s"
local M = "M"
local L = "L"
local western=require 'musicutil'

function pf.name_to_sequence(name)
  local is_western = false
  local n, l, m, s, seq
  for i=1,#western.SCALES do
    if name == western.SCALES[i].name and is_western == false then
      ls_seq = pf.seq_ls(western.generate_scale(60, name))
      n = ls_seq.n
      l = ls_seq.l or 0
      m = ls_seq.m
      s = ls_seq.s
      seq = ls_seq.seq
      is_western = true
    end
  end
  if is_western == false then
  end
end

function pf.lowest(t)
  local lowest = nil
  for k in pairs(t) do
    if lowest == nil then
      lowest = k
    end
    lowest = k < lowest and k or lowest
  end
  return lowest
end

function pf.spairs(t, order)
  -- collect the keys
  local keys = {}
  for k in pairs(t) do keys[#keys+1] = k end

  -- if order function given, sort by it by passing the table and keys a, b,
  -- otherwise just sort the keys
  if order then
    table.sort(keys, function(a,b) return order(t, a, b) end)
  else
    table.sort(keys)
  end

  -- return the iterator function
  local i = 0
  return function()
    i = i + 1
    if keys[i] then
      return keys[i], t[keys[i]]
    end
  end
end

function pf.reverse_name_lookup(lookup, names)
  local reverse_name = {}
  local no_reverse_name = {}
  local names_list = {}
  local no_names_list = {}
  local m, seq, name, tscale, data, edoname
  for n, np in pairs(lookup) do
    if n > 2 then
      no_reverse_name[n] = no_reverse_name[n] or {}
    end
    for l, lp in pairs(np) do
      for s, sp in pairs(lp) do
        for m_or_seq, seqs_or_name in pairs(sp) do
          if tonumber(m_or_seq) == nil then
            m = nil
            seq = m_or_seq
            if tonumber(seqs_or_name) == nil then
              name = seqs_or_name
            else
              name = names[seqs_or_name]
            end
            if n > 2 then
              tscale = Scale:new(l, s, seq)
              tscale:update_edo()
              data = {n=n, l=l, s=s, m=nil, seq=seq, edo=tscale.edivisions, name=name}

              edoname = name.." "..data.edo.."EDO"
              reverse_name[name] = data
              no_reverse_name[n][edoname] = data
            end
          else
            m = m_or_seq
            for seq, name in pairs(seqs_or_name) do
              if tonumber(name) == nil then
                name = name
              else
                name = names[name]
              end
              if n > 2 then
                tscale = Scale:new(l, s, seq, m)
                tscale:update_edo()
                data = {n=n, l=l, s=s, m=m, seq=seq, edo=tscale.edivisions, name=name}

                edoname = name.." "..data.edo.."EDO"
                reverse_name[name] = data
                no_reverse_name[n][edoname] = data
              end
            end
          end
        end
      end
    end
  end

  local i
  for n, list in pairs(no_reverse_name) do
    local sorted = {}
    i = 0
    for edoname, v in pf.spairs(list, function(t, a, b)
      if t[b].edo == t[a].edo then
        return t[b].name > t[a].name
      else
        return t[b].edo > t[a].edo
      end
    end) do
      i = i + 1
      sorted[i] = edoname
    end
    no_names_list[n] = sorted

    for edoname, v in pf.spairs(list, function(t, a, b)
      if t[b].name == t[a].name then
        return t[b].edo > t[a].edo
      else
        return t[b].name > t[a].name
      end
    end) do
      table.insert(names_list, v.name)
    end
  end

  return {lookup=reverse_name, names=names_list,
    no_lookup=no_reverse_name, no_names=no_names_list}
end

function pf.pop_named_sequences(lookup)
  local ls_seq, name, l, m, s, n
  for i=1,#western.SCALES do
    name = western.SCALES[i].name
    ls_seq = pf.seq_ls(western.generate_scale(60, name))
    n = ls_seq.n
    l = ls_seq.l or 0
    m = ls_seq.m
    s = ls_seq.s
    if lookup[n] ~= nil then
      if lookup[n][l] ~= nil then
        if lookup[n][l][s] ~= nil then
          if ls_seq.m ~= nil then
            if lookup[n][l][s][m] ~= nil then
              if lookup[n][l][s][m][ls_seq.seq] ~= nil then
                lookup[n][l][s][m][ls_seq.seq] = name
              end
            end
          else
            if lookup[n][l][s][ls_seq.seq] ~= nil then
              lookup[n][l][s][ls_seq.seq] = name
            end
          end
        end
      end
    end
  end
end

function pf.seq_ls(t)
  local last
  local seq = {}
  for i, v in ipairs(t) do
    if last == nil then
      last = v
    else
      seq[i-1] = v - last
    end
    last = v
  end
  local lms = pf.uniqvalues(seq)
  local s=lms[1]
  local m,l
  if (#lms == 3) then
    m=lms[2]
    l=lms[3]
  end
  if (#lms == 2) then
    l=lms[2]
  end

  local sequence = ""
  for i, v in ipairs(seq) do
    if s==v then
      sequence = sequence .. S
    elseif l==v then
      sequence = sequence .. L
    else
      sequence = sequence .. M
    end
  end

  return {seq=sequence, n=#seq, s=s, m=m, l=l}
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

function pf.is_empty(t)
  for i,v in pairs(t) do
    if v ~= nil then
      return false
    end
  end
  return true
end

function pf.sortedkeys(t)
  local tkeys = {}
  for k in pairs(t) do table.insert(tkeys, k) end
  table.sort(tkeys)
  return tkeys
end

function pf.uniqvalues(t)
  local hash = {}
  for _,v in pairs(t) do
    if (not hash[v]) then
      hash[v] = true
    end
  end
  return pf.sortedkeys(hash)
end

-- http://tonalsoft.com/enc/t/tredek.aspx
function pf.tredek()
  return 2 ^ (1/270)
end

function pf.tprint(t)
  tab.print(t)
end

function pf.ttprint(l,t)
  if t == nil then
    print(l, "-> nil")
  else
    print(l, "->")
    for i,v in pairs(t) do
      if v ~= nil then
        if type(v) == "table" then
          pf.ttprint("  "..i, v)
        else
          print(i, v)
        end
      end
    end
  end
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
  if t ~= nil then
    s.text(t)
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

function pf.note_label(midi)
  return note[midi]
end

return pf
