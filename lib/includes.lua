-- represents scale with sequence of L,s steps
include("pitfalls/lib/Scale")

-- various functions
pf = include("pitfalls/lib/functions")

patch = include("pitfalls/lib/patch")

-- maps ratio labels to ratio fractions
ratiointervals = include("pitfalls/lib/ratios")

-- maps chord labels to interval labels
chords = include("pitfalls/lib/chords")

-- maps n, LMs, sequence to scale names
-- sourced from https://en.xen.wiki/w/Main_Page
-- and http://www.huygens-fokker.org/docs/modename.html
named_scales = include("pitfalls/lib/named_scales")

-- mixin the MusicUtil scale names
pf.pop_named_sequences(named_scales.lookup)

reverse_name = pf.reverse_name_lookup(named_scales.lookup, named_scales.names)

-- -- represents scale with sequence of L,s steps
-- include("pitfalls/lib/Scale")

-- represents intervals for scale in given mode
include("pitfalls/lib/Intervals")

-- represents intervals for all degrees of scale in given mode
include("pitfalls/lib/ScaleIntervals")

-- represents pitches seeded from a given scale
include("pitfalls/lib/Pitches")

-- draws display to screen
scale_name = nil
scale_no_index = nil
display_orig = include("pitfalls/lib/display")
display_strings = include("pitfalls/lib/display_strings")
display_circle = include("pitfalls/lib/display_circle")
display_patch = include("pitfalls/lib/display_patch")

-- exposed norns parameters
parameters = include("pitfalls/lib/parameters")

-- init parameters before grid include
parameters.init()

-- midi in from device - declare after patch
midi_in = include("pitfalls/lib/midi_in")

-- midi out to device
midi_out = include("pitfalls/lib/midi")

-- grid interactions and leds
g = include("pitfalls/lib/g")
