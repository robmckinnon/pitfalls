-- FJS Calculators - https://misotanni.github.io/fjs/en/calc.html 
-- List of pitch intervals -https://en.wikipedia.org/wiki/List_of_pitch_intervals
-- https://en.xen.wiki/w/Gallery_of_just_intervals
-- Two letter codes changed to make different interval labels more unique.
local ratiointervals = {
  [ 1] = " ", -- unison P1
  [16/15] = "m2", -- minor second m2
  [ 9/8] = "M2", -- major second M2
  [ 8/7] = "S2", -- septimal major second
  [ 7/6] = "s3", -- septimal minor third s3
  [ 6/5] = "m3", -- minor third m3
  [11/9] = "n3", -- undecimal neutral third n3
  [ 5/4] = "M3", -- major third M3
  [ 9/7] = "S3", -- septimal major third SM3
  [ 4/3] = "P4", -- perfect fourth P4
  [11/8] = "n4", -- lesser undecimal tritone or undecimal semi-augmented fourth, undecimal superfourth
  [25/18] = "a4", -- classic augmented fourth
  [ 7/5] = "TT", -- lesser septimal tritone TT, sub-fifth, Huygens' tritone
  [45/32] = "A4", -- just augmented fourth, diatonic tritone, smaller pental tritone
  [17/12] = "d5", -- larger septendecimal tritone
  [10/7] = "S4", -- greater septimal tritone, super-fourth, Euler's tritone, superaugmented fourth
  [13/9] = "d5", -- tridecimal diminished fifth, high tritone
  [ 3/2] = "P5", -- perfect fifth P5
  [14/9] = "s6", -- subminor sixth or septimal sixth
  [25/16] = "A5", -- classic (5-limit) augmented fifth
  [11/7] = "s6", -- undecimal minor sixth, undecimal augmented fifth 
  [ 8/5] = "m6", -- minor sixth m6
  [13/8] = "n6", -- Tridecimal neutral sixth
  [ 5/3] = "M6", -- just major sixth M6
  [128/75] = "d7", -- diminished seventh
  [12/7] = "S6", -- septimal major sixth
  [ 7/4] = "s7", -- Septimal minor seventh, harmonic seventh m7
  [16/9] = "m7", -- lesser minor seventh
  [ 9/5] = "m7", -- greater just minor seventh m7
  [11/6] = "n7", -- Undecimal neutral seventh
  [13/7] = "N7", -- Tridecimal neutral seventh
  [15/8] = "M7", -- major seventh
  [ 2] = " " -- octave P8
}

return ratiointervals

