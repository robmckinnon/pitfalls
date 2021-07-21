-- represents scale with sequence of L,s steps
include("pitfalls/lib/Scale")

-- various functions
pf = include("pitfalls/lib/functions")

mx_samples = {}
mxsamples=nil
mx_sample=nil
skeys=nil

for f in io.popen("ls -a /home/we/dust/audio"):lines() do
  if f == "mx.samples" then
    print("mx.samples")
    local pdir = io.popen("ls -a /home/we/dust/audio/mx.samples")
    for s in pdir:lines() do
      if s ~= "." and s ~= ".." then
        print(s)
        table.insert(mx_samples, s)
      end
    end
    pdir:close()
  end
end

if pf.tablelength(mx_samples) > 0 then
  mxsamples=include("mx.samples/lib/mx.samples")
  engine.name="MxSamples"
  mx_sample=mx_samples[1]
  skeys = mxsamples:new()
else
  -- ships with norns
  engine.name = "PolyPerc"
end

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

-- exposed norns parameters
parameters = include("pitfalls/lib/parameters")

-- init parameters before grid include
parameters.init()

-- midi out to device
midi_out = include("pitfalls/lib/midi")

-- grid interactions and leds
g = include("pitfalls/lib/g")
