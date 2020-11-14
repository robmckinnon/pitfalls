local ratiointervals = {}

-- FJS Calculators - https://misotanni.github.io/fjs/en/calc.html
-- List of pitch intervals -https://en.wikipedia.org/wiki/List_of_pitch_intervals
-- https://en.xen.wiki/w/Gallery_of_just_intervals
-- Two letter codes changed to make different interval labels more unique.
ratiointervals.list = {
  [ 1   ] = {"P1","P1","P1"}, --  unison P1
  [16/15] = {"m2","m2","m2_5"}, --  minor second m2
  [13/12] = {"N2","m2","m2^13"}, -- tridecimal neutral second, tridecimal 2
  [11/10] = {"n2","m2","m2^11_5"}, -- undecimal submajor second, large undecimal neutral second, 4
  [10/9 ] = {"T2","M2","M2^5"}, -- classic (whole) tone, minor (whole) tone
  [ 9/8 ] = {"M2","M2","M2"}, --  major second M2
  [ 8/7 ] = {"S2","M2","M2_7"}, --  septimal major second
  [ 7/6 ] = {"s3","m3","m3^7"}, --  septimal minor third s3
  [19/16] = {"o3","m3","m3^19"}, -- otonal minor third, octave-reduced 19th harmonic
  [ 6/5 ] = {"m3","m3","m3_5"}, --  minor third m3
  [17/14] = {"t3","m3","m3^17_7"}, -- septendecimal supraminor third
  [11/9 ] = {"n3","m3","m3^11"}, --  undecimal neutral third n3
  [ 5/4 ] = {"M3","M3","M3^5"}, --  major third M3
  [ 9/7 ] = {"S3","M3","M3_7"}, --  septimal major third SM3
  [13/10] = {"d4","d4","d4^13_5"}, -- Barbados third, tridecimal 9
  [ 4/3 ] = {"P4","P4","P4"}, --  perfect fourth P4
  [19/14] = {"N4","P4","P4^19_7"}, -- undevicesimal wide fourth
  [11/8 ] = {"n4","P4","P4^11"}, -- super-fourth, undecimal semi-augmented fourth, octave-reduced 11th harmonic or harmonic 11th, Alphorn-Fa
  [25/18] = {"a4","A4","A4^5,5"}, --  classic augmented fourth
  [ 7/5 ] = {"sT","d5","d5^7_5"}, -- lesser septimal tritone TT, sub-fifth, Huygens' tritone
  [45/32] = {"A4","A4","A4^5"}, -- just augmented fourth, diatonic tritone
  [17/12] = {"d5","d5","d5^17"}, --  larger septendecimal tritone
  [10/7 ] = {"ST","A4","A4^5_7"}, -- greater septimal tritone, super-fourth, Euler's tritone, superaugmented fourth
  [13/9 ] = {"t5","d5","d5^13"}, -- tridecimal diminished fifth, high tritone
  [ 3/2 ] = {"P5","P5","P5"}, --  perfect fifth P5
  [14/9 ] = {"s6","M6","m6^7"}, --  subminor sixth or septimal sixth
  [25/16] = {"a5","A5","A5^5,5"}, -- classic (5-limit) augmented fifth
  [11/7 ] = {"A5","P5","P5^11_7"}, -- undecimal minor sixth, undecimal augmented fifth
  [ 8/5 ] = {"m6","m6","m6_5"}, --  minor sixth m6
  [13/8 ] = {"N6","m6","m6^13"}, --  Tridecimal neutral sixth
  [ 5/3 ] = {"M6","M6","M6^5"}, --  just major sixth M6
  [128/75] = {"d7","d7","d7_5,5"}, --  diminished seventh
  [17/10] = {"T6","d7","d7^17_5"}, -- septendecimal diminished seventh, septendecimal major sixth
  [12/7 ] = {"S6","M6","M6_7"}, --  septimal major sixth
  [ 7/4 ] = {"s7","m7","m7^7"}, -- Septimal minor seventh, harmonic seventh m7
  [16/9 ] = {"m7","m7","m7"}, --  lesser minor seventh
  [ 9/5 ] = {"g7","m7","m7_5"}, --  greater just minor seventh m7
  [11/6 ] = {"n7","m7","m7^11"}, --  Undecimal neutral seventh
  [13/7 ] = {"N7","m7","m7^13_7"}, --  Tridecimal neutral seventh
  [15/8 ] = {"M7","M7","M7^5"}, --  major seventh
  [17/9 ] = {"T7","d8","d8^17"}, -- large septendecimal major seventh
  [19/10] = {"d8","d8","d8^19_5"}, -- large undevicesimal major seventh
  [ 2   ] = {"P8","P8","P8"} --  octave P8
}

function ratiointervals.key(ratio)
  return ratiointervals.list[ratio][1]
end

function ratiointervals.label(ratio)
  return ratiointervals.list[ratio][2]
end

function ratiointervals.fjs(ratio)
  return ratiointervals.list[ratio][3]
end

return ratiointervals
