local patch = {}

local mx_samples = {}
local mxsamples=nil
local mx_sample=nil
local skeys=nil

local mollypoly=nil
local mollypoly_types = {"lead", "pad", "perc"}

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

function patch.mx_samples()
  return mx_samples
end

function patch.mx_sample()
  return mx_sample
end

function patch.is_molly()
  return engine.name and engine.name == "MollyThePoly" or false
end

function patch.is_mx_samples()
  return engine.name and engine.name == "MxSamples" or false
end

function patch.handle_load(x)
  print("handle_load"..engine.name)
  if patch.is_mx_samples() then
    if mxsamples == nil then
      mxsamples=include("mx.samples/lib/mx.samples")
    end
    skeys = mxsamples:new()
  end
end

function patch.note_off_all()
  if patch.is_molly() then
    engine.noteOffAll()
  end  
end

function patch.note_kill_all()
  if patch.is_molly() then
    engine.noteKillAll()
  end
end

function patch.load_engine(name)
  if name ~= engine.name then
    patch.note_off_all()
    engine.load(name, patch.handle_load)
  end
end

function patch.load_patch(name)
  if name ~= mx_sample then
    mx_sample=name
  end
end

function patch.cutoff(x)
  if engine.is_loading then
    return
  elseif patch.is_molly() then
    if mollypoly == nil then
      mollypoly = require "molly_the_poly/lib/molly_the_poly_engine"
      mollypoly.add_params()
    end
    mollypoly.randomize_params(mollypoly_types[ math.random( #mollypoly_types ) ])
  elseif patch.is_mx_samples() then
  else
    engine.cutoff(x)
  end
end

function patch.pitch_on(f)
  if engine.is_loading then
    return
  elseif patch.is_mx_samples() then
    skeys:on({name=mx_sample,hz=f,midi=0,velocity=120})
  elseif patch.is_molly() then
    engine.noteOn(f, f, 120)
  else
    engine.hz(f)
  end
end

function patch.pitch_off(f)
  if engine.is_loading then
    return
  elseif patch.is_mx_samples() then
    skeys:off({name=mx_sample,hz=f})
  elseif patch.is_molly() then
    engine.noteOff(f)
  end
end

return patch