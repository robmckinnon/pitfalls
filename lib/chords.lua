local chords = {}

chords.list = {
  ["sus2"] =                 {"M2", "P5"}, -- suspended second
  ["mu major"] =             {"M2", "M3", "P5"}, -- mu major
  ["double-down, down five"]={"S2", "S4"}, -- vvE
  ["minor triad harmonic"] = {"s3", "P5"}, -- "The lowest numbers producing a minor triad in the harmonic series (McIntyre 2002)"
  ["perfect diminished"] =   {"m3", "TT"},
  ["diminished"] =           {"m3", "d5"}, -- "dim"
  ["minor harmonic"] =       {"m3", "P5"}, -- minor chord "the first occurrence of a minor triad in the harmonic series"
  ["minor augmented"] =      {"m3", "A5"}, -- augmented triad
  ["minor sixth"] =          {"m3", "P5", "M6"}, -- m7
  ["diminished seventh"] =   {"m3", "d5", "d7"}, -- "dim7"
  ["half diminished"] =      {"m3", "d5", "m7"}, -- "m7b5"
  ["half-diminished 7th"]  = {"m3", "TT", "m7"}, -- half-diminished seventh
  ["minor seventh"] =        {"m3", "P5", "m7"}, -- m7
  ["major/minor seventh"] =  {"m3", "P5", "M7"}, -- m/M7
  ["down-five"] =            {"n3", "d5"}, -- 0-6-11 	0-343-629 	9:11:13 	C E vG v5
  ["major"] =                {"M3", "P5"}, -- "M"
  ["augmented"] =            {"M3", "A5"}, -- augmented triad
  ["minor augmented 7th"] =  {"M3", "A5", "m7"}, -- augmented seventh
  ["augmented seventh"] =    {"M3", "A5", "M7"}, -- maj7+5
  ["sixth"] =                {"M3", "P5", "M6"}, -- "add9"
  ["dominant seventh"] =     {"M3", "P5", "m7"}, -- "7 dom"
  ["harmonic seventh"] =     {"M3", "P5", "s7"}, -- harmonic seventh
  ["major seventh"] =        {"M3", "P5", "M7"}, -- "M7"
  ["major seventh b 6th"] =  {"M3", "m6", "M7"}, -- "M7b6"
  ["aug-three"] =	           {"S3", "P5"}, --  sharp-three or aug-three 
  ["sus4"] =                 {"P4", "P5"}, -- suspended fourth
  ["7sus4"] =                {"P4", "P5", "m7"}, -- suspended fourth seventh
  ["dream"] =                {"P4", "d5", "P5"} -- dream
}

function chords.match(intervals)
  local intdeg = {}
  local matches = {}
  local match = nil
  local degrees = nil
  for deg,interval in pairs(intervals) do
    intdeg[interval] = deg
  end
  for name,parts in pairs(chords.list) do
    match = true
    degrees = {}
    for i,part in pairs(parts) do
      if intdeg[part] == nil then
        match = false
      else
        degrees[intdeg[part]] = part
      end
    end
    if match then
      matches[name] = degrees
    end
  end

  return matches
end

return chords
