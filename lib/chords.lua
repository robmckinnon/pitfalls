local chords = {}

-- https://en.xen.wiki/w/List_of_root-3rd-P5_triads_in_JI
-- https://gist.github.com/endolith/3098720
-- https://www.flickr.com/photos/omegatron/7594950730/in/photostream/
chords.list = {
  ["15:16:21"] =             {"m2", "TT"},
  ["12:13:17"] =             {"N2", "d5"},
  ["12:13:18"] =             {"N2", "P5"},
  ["10:11:14"] =             {"n2", "TT"},
  ["10:11:15"] =             {"n2", "P5"},
  ["18:20:25"] =             {"T2", "a4"},
  ["9:10:13"] =              {"T2", "t5"},
  ["18:20:27"] =             {"T2", "P5"},
  ["sus2"] =                 {"M2", "P5"}, --      "8:9:12" suspended second
  ["8:9:14"] =               {"M2", "s7"},
  ["mu major"] =             {"M2", "M3", "P5"}, -- mu major
  ["7:8:9"] =                {"S2", "S3"},
  ["double-down, down five"]={"S2", "S4"}, --       vvE
  ["double-down, five"]=     {"S2", "P5"}, --     "14:16:21"
  ["7:8:11"] =               {"S2", "A5"},
  ["7:8:12"] =               {"S2", "S6"},
  ["7:8:13"] =               {"S2", "N7"},
  ["6:7:8"] =                {"s3", "P4"},
  ["18:21:25"] =             {"s3", "a4"},
  ["12:14:17"] =             {"s3", "d5"},
  ["minor triad harmonic"] = {"s3", "P5"}, --      "6:7:9" Septimal subminor "The lowest numbers producing a minor triad in the harmonic series (McIntyre 2002)"
  ["6:7:10"] =               {"s3", "M6"},
  ["16:19:24"] =             {"o3", "P5"},
  ["perfect diminished"] =   {"m3", "TT"}, --      "5:6:7"
  ["diminished"] =           {"m3", "d5"}, --      "dim"
  ["35:42:50"] =             {"m3", "S4"},
  ["minor harmonic"] =       {"m3", "P5"}, --       "10:12:15" minor chord "the first occurrence of a minor triad in the harmonic series"
  ["5:6:8"] =                {"m3", "m6"},
  ["5:6:9"] =                {"m3", "g7"},
  ["minor augmented"] =      {"m3", "A5"}, --       augmented triad
  ["minor sixth"] =          {"m3", "P5", "M6"}, -- m7
  ["diminished seventh"] =   {"m3", "d5", "d7"}, -- "dim7"
  ["half diminished"] =      {"m3", "d5", "m7"}, -- "m7b5"
  ["half-diminished 7th"]  = {"m3", "TT", "m7"}, -- half-diminished seventh
  ["minor seventh"] =        {"m3", "P5", "m7"}, -- m7
  ["major/minor seventh"] =  {"m3", "P5", "M7"}, -- m/M7
  ["14:17:21"] =             {"t3", "P5"},
  ["14:17:22"] =             {"t3", "A5"},
  ["18:22:25"] =             {"n3", "a4"},
  ["down-five"] =            {"n3", "d5"}, --       0-6-11 	0-343-629 	9:11:13 	C E vG v5
  ["9:11:13"] =              {"n3", "t5"},
  ["18:22:27"] =             {"n3", "P5"}, --      "18:22:27" neutral triad
  ["20:25:28"] =             {"M3", "TT"},
  ["12:15:17"] =             {"M3", "d5"},
  ["major"] =                {"M3", "P5"}, --       "4:5:6"  "Major"
  ["augmented"] =            {"M3", "a5"}, --      "16:20:25" augmented triad
  ["28:35:44"] =             {"M3", "A5"},
  ["4:5:7"] =                {"M3", "s7"},
  ["minor augmented 7th"] =  {"M3", "A5", "m7"}, -- augmented seventh
  ["augmented seventh"] =    {"M3", "A5", "M7"}, -- maj7+5
  ["sixth"] =                {"M3", "P5", "M6"}, -- "add9"
  ["dominant seventh"] =     {"M3", "P5", "m7"}, -- "7 dom"
  ["harmonic seventh"] =     {"M3", "P5", "s7"}, -- harmonic seventh
  ["major seventh"] =        {"M3", "P5", "M7"}, -- "M7"
  ["major seventh b 6th"] =  {"M3", "m6", "M7"}, -- "M7b6"
  ["7:9:10"] =               {"S3", "S4"},
  ["aug-three"] =            {"S3", "P5"}, --      "14:18:21" sharp-three or aug-three or Septimal supermajor
  ["7:9:11"] =               {"S3", "A5"},
  ["10:13:14"] =             {"d4", "TT"},
  ["10:13:15"] =             {"d4", "P5"},
  ["18:24:25"] =             {"P4", "a4"},
  ["15:20:21"] =             {"P4", "TT"},
  ["12:16:17"] =             {"P4", "d5"},
  ["9:12:13"] =              {"P4", "t5"},
  ["sus4"] =                 {"P4", "P5"}, --       "6:8:9" suspended fourth
  ["3:4:5"] =                {"P4", "M6"},
  ["7sus4"] =                {"P4", "P5", "m7"}, -- suspended fourth seventh
  ["dream"] =                {"P4", "d5", "P5"}, -- dream
  ["14:19:21"] =             {"N4", "P5"},
  ["14:19:22"] =             {"N4", "A5"},
  ["8:11:12"] =              {"n4", "P5"},
  ["8:11:14"] =              {"n4", "s7"},
  ["18:25:27"] =             {"a4", "P5"},
  ["5:7:8"] =                {"TT", "m6"},
  ["7:10:11"] =              {"S4", "A5"},
  ["14:21:22"] =             {"P5", "A5"},
  ["4:6:7"] =                {"P5", "s7"}
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
