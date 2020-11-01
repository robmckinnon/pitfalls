local chords = {}

-- https://en.xen.wiki/w/List_of_root-3rd-P5_triads_in_JI
-- https://gist.github.com/endolith/3098720
-- https://www.flickr.com/photos/omegatron/7594950730/in/photostream/
chords.list = {
  ["sus2"] =                 {"M2", "P5"}, --      "8:9:12" suspended second
  ["mu major"] =             {"M2", "M3", "P5"}, -- mu major
  ["double-down, down five"]={"S2", "S4"}, --       vvE
  ["double-down, five"]=     {"S2", "P5"}, --     "14:16:21"
  ["minor triad harmonic"] = {"s3", "P5"}, --      "6:7:9" Septimal subminor "The lowest numbers producing a minor triad in the harmonic series (McIntyre 2002)"
  ["perfect diminished"] =   {"m3", "TT"}, --      "5:6:7"
  ["diminished"] =           {"m3", "d5"}, --      "dim"
  ["minor harmonic"] =       {"m3", "P5"}, --       "10:12:15" minor chord "the first occurrence of a minor triad in the harmonic series"
  ["minor augmented"] =      {"m3", "A5"}, --       augmented triad
  ["minor sixth"] =          {"m3", "P5", "M6"}, -- m7
  ["diminished seventh"] =   {"m3", "d5", "d7"}, -- "dim7"
  ["half diminished"] =      {"m3", "d5", "m7"}, -- "m7b5"
  ["half-diminished 7th"]  = {"m3", "TT", "m7"}, -- half-diminished seventh
  ["minor seventh"] =        {"m3", "P5", "m7"}, -- m7
  ["major/minor seventh"] =  {"m3", "P5", "M7"}, -- m/M7
  ["down-five"] =            {"n3", "d5"}, --       0-6-11 	0-343-629 	9:11:13 	C E vG v5
  ["18:22:27"] =             {"n3", "P5"}, --      "18:22:27" neutral triad
  ["major"] =                {"M3", "P5"}, --       "4:5:6"  "Major"
  ["augmented"] =            {"M3", "A5"}, --      "16:20:25" augmented triad
  ["minor augmented 7th"] =  {"M3", "A5", "m7"}, -- augmented seventh
  ["augmented seventh"] =    {"M3", "A5", "M7"}, -- maj7+5
  ["sixth"] =                {"M3", "P5", "M6"}, -- "add9"
  ["dominant seventh"] =     {"M3", "P5", "m7"}, -- "7 dom"
  ["harmonic seventh"] =     {"M3", "P5", "s7"}, -- harmonic seventh
  ["major seventh"] =        {"M3", "P5", "M7"}, -- "M7"
  ["major seventh b 6th"] =  {"M3", "m6", "M7"}, -- "M7b6"
  ["aug-three"] =            {"S3", "P5"}, --      "14:18:21" sharp-three or aug-three or Septimal supermajor
  ["sus4"] =                 {"P4", "P5"}, --       "6:8:9" suspended fourth
  ["7sus4"] =                {"P4", "P5", "m7"}, -- suspended fourth seventh
  ["dream"] =                {"P4", "d5", "P5"}, -- dream
  ["8:11:12"] =              {"n4", "P5"},       -- "8:11:12"
  ["18:25:27"] =             {"a4", "P5"}        -- "18:25:27"
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
