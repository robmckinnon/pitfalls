-- ships with norns
engine.name = "PolyPerc"

-- various functions
fn = include("pitfalls/lib/functions")

-- maps ratio labels to ratio fractions
ratiointervals = include("pitfalls/lib/ratios")

-- maps chord labels to interval labels
chords = include("pitfalls/lib/chords")

-- represents scale with sequence of L,s steps
include("pitfalls/lib/Scale")

-- represents intervals for scale in given mode
include("pitfalls/lib/Intervals")

-- represents pitches seeded from a given scale
include("pitfalls/lib/Pitches")

-- draws display to screen
display = include("pitfalls/lib/display")

-- grid interactions and leds
g = include("pitfalls/lib/g")

