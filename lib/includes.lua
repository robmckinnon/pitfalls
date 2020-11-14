-- ships with norns
engine.name = "PolyPerc"

-- various functions
pf = include("pitfalls/lib/functions")

-- maps ratio labels to ratio fractions
ratiointervals = include("pitfalls/lib/ratios")

-- maps chord labels to interval labels
chords = include("pitfalls/lib/chords")

-- represents scale with sequence of L,s steps
include("pitfalls/lib/Scale")

-- represents intervals for scale in given mode
include("pitfalls/lib/Intervals")

-- represents intervals for all degrees of scale in given mode
include("pitfalls/lib/ScaleIntervals")

-- represents pitches seeded from a given scale
include("pitfalls/lib/Pitches")

-- draws display to screen
display = include("pitfalls/lib/display")

-- exposed norns parameters
parameters = include("pitfalls/lib/parameters")

-- init parameters before grid include
parameters.init()

-- grid interactions and leds
g = include("pitfalls/lib/g")
