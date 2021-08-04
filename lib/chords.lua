local chords = {}

-- https://en.xen.wiki/w/List_of_root-3rd-P5_triads_in_JI
-- https://gist.github.com/endolith/3098720
-- https://en.xen.wiki/w/User:ResonantFrequencies/List_of_named_chords
-- https://www.flickr.com/photos/omegatron/7594950730/in/photostream/
-- https://nmbx.newmusicusa.org/composing-xenharmonic-music/
chords.list = {
  ["15:16:21"] =             {"m2", "sT"},
  ["14:15:21"] =             {"A1", "P5"},
  ["12:13:17"] =             {"t2", "d5"},
  ["12:13:18"] =             {"t2", "P5"},
  ["11:12:18"] =             {"N2", "n6"},
  ["10:11:14"] =             {"n2", "sT"},
  ["10:11:15"] =             {"n2", "P5"},
  ["10:11:19"] =             {"n2", "d8"},
  ["18:20:25"] =             {"T2", "a4"},
  ["9:10:13"] =              {"T2", "t5"},
  ["18:20:27"] =             {"T2", "P5"},
  ["8:9:10"] =               {"M2", "M3"},
  ["8:9:11"] =               {"M2", "n4"},
  ["sus2"] =                 {"M2", "P5"}, --      "8:9:12" suspended second
  ["8:9:14"] =               {"M2", "s7"},
  ["7:8:9"] =                {"S2", "S3"},
  ["double-down, down five"]={"S2", "ST"}, --     "7:8:10"  vvE
  ["14:16:19"] =             {"S2", "N4"},
  ["double-down, five"]=     {"S2", "P5"}, --     "14:16:21"
  ["7:8:11"] =               {"S2", "A5"},
  ["7:8:12"] =               {"S2", "S6"},
  ["28:32:49"] =             {"S2", "s7"},
  ["7:8:13"] =               {"S2", "N7"},
  ["6:7:8"] =                {"s3", "P4"},
  ["18:21:25"] =             {"s3", "a4"},
  ["12:14:17"] =             {"s3", "d5"},
  ["minor triad harmonic"] = {"s3", "P5"}, --      "6:7:9" Septimal subminor "The lowest numbers producing a minor triad in the harmonic series (McIntyre 2002)"
  ["6:7:10"] =               {"s3", "M6"},
  ["6:7:11"] =               {"s3", "n7"},
  ["16:19:24"] =             {"o3", "P5"}, --      rooted minor triad
  ["perfect diminished"] =   {"m3", "sT"}, --      "5:6:7"
  ["diminished"] =           {"m3", "d5"}, --      "60:72:85" "dim"
  ["35:42:50"] =             {"m3", "ST"},
  ["minor harmonic"] =       {"m3", "P5"}, --       "10:12:15" minor chord "the first occurrence of a minor triad in the harmonic series"
  ["minor augmented"] =      {"m3", "A5"}, --       "35:42:55" augmented triad
  ["5:6:8"] =                {"m3", "m6"},
  ["5:6:9"] =                {"m3", "g7"},
  ["14:17:21"] =             {"t3", "P5"}, --       17-limit supraminor
  ["14:17:22"] =             {"t3", "A5"},
  ["18:22:25"] =             {"n3", "a4"},
  ["down-five"] =            {"n3", "t5"}, --      "9:11:13"  0-6-11  0-343-629  9:11:13 C E vG v5
  ["36:44:51"] =             {"n3", "d5"}, --      "36:44:51"
  ["18:22:27"] =             {"n3", "P5"}, --      "18:22:27" neutral triad
  ["9:11:14"] =              {"n3", "s6"},
  ["9:11:15"] =              {"n3", "M6"},
  ["20:25:28"] =             {"M3", "sT"},
  ["12:15:17"] =             {"M3", "d5"},
  ["major"] =                {"M3", "P5"}, --       "4:5:6"  "Major"
  ["augmented"] =            {"M3", "a5"}, --      "16:20:25" augmented triad
  ["28:35:44"] =             {"M3", "A5"},
  ["8:10:13"] =              {"M3", "N6"},
  ["4:5:7"] =                {"M3", "s7"},
  ["7:9:10"] =               {"S3", "ST"},
  ["aug-three"] =            {"S3", "P5"}, --      "14:18:21" sharp-three or aug-three or Septimal supermajor
  ["7:9:11"] =               {"S3", "A5"},
  ["7:9:13"] =               {"S3", "N7"},
  ["10:13:14"] =             {"d4", "sT"},
  ["barbados"] =             {"d4", "P5"}, --      "10:13:15" Barbados triad
  ["10:13:17"] =             {"d4", "T6"},
  ["20:26:35"] =             {"d4", "s7"},
  ["18:24:25"] =             {"P4", "a4"},
  ["15:20:21"] =             {"P4", "sT"},
  ["12:16:17"] =             {"P4", "d5"},
  ["9:12:13"] =              {"P4", "t5"},
  ["sus4"] =                 {"P4", "P5"}, --       "6:8:9" suspended fourth
  ["3:4:5"] =                {"P4", "M6"},
  ["9:12:15"] =              {"P4", "M6"},
  ["6:8:11"] =               {"P4", "n7"},
  ["14:19:21"] =             {"N4", "P5"},
  ["14:19:22"] =             {"N4", "A5"},
  ["14:19:24"] =             {"N4", "S6"},
  ["8:11:12"] =              {"n4", "P5"},
  ["8:11:13"] =              {"n4", "N6"},
  ["8:11:14"] =              {"n4", "s7"},
  ["8:11:15"] =              {"n4", "M7"},
  ["18:25:27"] =             {"a4", "P5"},
  ["5:7:8"] =                {"sT", "m6"},
  ["5:7:9"] =                {"sT", "g7"},
  ["7:10:11"] =              {"ST", "A5"},
  ["7:10:12"] =              {"ST", "S6"},
  ["7:10:13"] =              {"ST", "N7"},
  ["14:21:22"] =             {"P5", "A5"},
  ["6:9:10"] =               {"P5", "M6"},
  ["4:6:7"] =                {"P5", "s7"},
  ["6:9:11"] =               {"P5", "n7"},
  ["5:8:9"] =                {"m6", "g7"},
  ["6:10:11"] =              {"M6", "n7"},

  ["mu major"] =             {"M2", "M3", "P5"}, -- 8:9:10:12
  ["5:6:7:8"] =              {"m3", "sT", "m6"}, --
  ["half-diminished seventh"] = {"m3", "sT", "g7"}, -- 5:6:7:9
  -- ["half-diminished 7th"]  = {"m3", "TT", "m7"}, -- half-diminished seventh
  ["5:6:8:9"] =              {"m3", "m6", "g7"}, --
  ["60:70:85:102"] =         {"s3", "d5", "T6"}, --
  ["diminished seventh"] =   {"m3", "d5", "d7"}, -- "dim7" 300:360:425:512
  ["60:72:85:102"] =         {"m3", "d5", "T6"}, --
  ["half diminished"] =      {"m3", "d5", "m7"}, -- "m7b5" 180:216:255:320
  ["dream"] =                {"P4", "d5", "P5"}, -- 12:16:17:18
  ["7:8:10:12"] =            {"S2", "ST", "S6"}, --
  ["7:9:10:12"] =            {"S3", "ST", "S6"}, --
  ["14:18:20:26"] =          {"S3", "ST", "N7"}, --
  ["18:21:27:28"] =          {"s3", "P5", "s6"}, --
  ["6:7:9:10"] =             {"s3", "P5", "M6"}, --
  ["minor sixth"] =          {"m3", "P5", "M6"}, -- m7
  ["minor seventh"] =        {"m3", "P5", "m7"}, -- m7
  ["minor seventh 2"] =      {"m3", "P5", "g7"}, -- 10:12:15:18
  ["major/minor seventh"] =  {"m3", "P5", "M7"}, -- m/M7
  ["sixth"] =                {"M3", "P5", "M6"}, -- "add9"
  ["harmonic seventh"] =     {"M3", "P5", "s7"}, -- 4:5:6:7 harmonic seventh
  ["dominant seventh 2"] =   {"M3", "P5", "g7"}, -- 20:25:30:36
  ["dominant seventh"] =     {"M3", "P5", "m7"}, -- "7 dom"
  ["major seventh"] =        {"M3", "P5", "M7"}, -- "M7"
  ["9:10:14:16"] =           {"T2", "s6", "m7"}, --
  ["augmented seventh 2"] =  {"M3", "a5", "g7"}, -- 80:100:125:144
  ["augmented seventh"] =    {"M3", "A5", "M7"}, -- maj7+5
  ["7:9:11:12"] =            {"S3", "A5", "S6"}, --
  ["7sus4"] =                {"P4", "P5", "m7"}, -- suspended fourth seventh
  ["minor augmented 7th"] =  {"M3", "A5", "m7"}, -- augmented seventh
  ["major seventh b 6th"] =  {"M3", "m6", "M7"} -- "M7b6"
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
