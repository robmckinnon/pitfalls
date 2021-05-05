
local BASE_OCTAVE = 4
Pitches = {}

function get_freqx(base_freq, edo, index, oct, base_octave)
  local f = base_freq * pf.ratio(index-1, edo)
  if (oct < base_octave) then
    f = f / (2 ^ (base_octave - oct))
  elseif (oct > base_octave) then
    f = f * (2 ^ (oct - base_octave))
  end
  return f
end

function midi_to_hz(n, tuning)
  return tuning * (2 ^ ((n - 69) / 12.0))
end

function Pitches:new(scale, intervals, tuning, midi_start)
  local p = setmetatable({}, { __index = Pitches })
  p.freqs = {}
  p.degrees = {}
  p.octdegfreqs = {}
  local index = 0
  local f = nil
  local base_freq = midi_to_hz(midi_start, tuning)
  for oct = 0,8 do
    p.octdegfreqs[oct+1] = {}
    f = pf.get_freq(base_freq, scale.edivisions, scale.tonic, oct, BASE_OCTAVE)
    for deg = 1,scale.length do
      index = index + 1
      p.freqs[index] = f * intervals:ratio(deg)
      p.degrees[index] = deg
      p.octdegfreqs[oct+1][deg] = p.freqs[index]
    end
  end

  return p
end

function Pitches:degree(index)
  return self.degrees[index]
end

function Pitches:freq(index)
  return self.freqs[index]
end

function Pitches:octdegfreq(oct, deg)
  if self.octdegfreqs[oct+1] then
    return self.octdegfreqs[oct+1][deg]
  else
    return nil
  end
end
