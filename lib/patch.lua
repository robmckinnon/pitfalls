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

function is_engine(name)
  return engine.name and engine.name == name or false
end

function patch.is_choir()
  return is_engine("Choir")
end

function patch.is_molly()
  return is_engine("MollyThePoly")
end

function patch.is_mx_samples()
  return is_engine("MxSamples")
end

function patch.is_synthy()
  return is_engine("Synthy")
end

function patch.handle_load(x)
  print("handle_load ", engine.name)
  if patch.is_mx_samples() then
    if mxsamples == nil then
      mxsamples=include("mx.samples/lib/mx.samples")
    end
    skeys = mxsamples:new()
  elseif patch.is_synthy() then
    engine.synthy_sub(1.0)
    engine.synthy_lpf(6000)
    engine.synthy_hold_control(5)
    engine.synthy_reverb(2/100)
    engine.synthy_flanger(0)
    engine.synthy_attack(1.0)
    engine.synthy_decay(0.1)
    engine.synthy_sustain(0.9)
    engine.synthy_release(5)
  end
  params:write()
end

function patch.note_off_all()
  if patch.is_molly() and not engine.is_loading then
    engine.noteOffAll()
  end  
end

function patch.note_kill_all()
  if patch.is_molly() and not engine.is_loading then
    engine.noteKillAll()
  end
end

function patch.load_engine(name)
  if name ~= engine.name then
    print("load_engine: ", name, " previous_engine: ", engine.name)
    patch.note_off_all()
    engine.load(name, patch.handle_load)
  end
end

function patch.load_patch(name)
  if name ~= mx_sample then
    mx_sample=name
  end
end

function patch.no_engine()
  return engine.name == "None"
end

function patch.cutoff(x)
  if engine.is_loading or patch.no_engine() then
    return
  elseif patch.is_molly() then
    if mollypoly == nil then
      mollypoly = require "molly_the_poly/lib/molly_the_poly_engine"
      mollypoly.add_params()
    end
    mollypoly.randomize_params(mollypoly_types[ math.random( #mollypoly_types ) ])
  elseif patch.is_mx_samples() then
  elseif patch.is_synthy() then
    engine.synthy_lpf(x)
  else
    engine.cutoff(x)
  end
end

function patch.pitch_on(f,vel)
  vel = vel or 120
  if f == nil or engine.is_loading or patch.no_engine() then
    return
  elseif patch.is_mx_samples() then
    skeys:on({name=mx_sample,hz=f,midi=0,velocity=vel/2})
  elseif patch.is_molly() then
    engine.noteOn(f, f, vel/127)
  elseif patch.is_choir() then
    engine.noteOn(f, vel/127, math.random(0,4), math.random(0,4))
  elseif patch.is_synthy() then
    engine.synthy_note_on(pf.hz_to_midi(f), vel/127)
  else
    engine.hz(f)
  end
end

function patch.pitch_off(f)
  if f == nil or engine.is_loading or patch.no_engine() then
    return
  elseif patch.is_mx_samples() then
    skeys:off({name=mx_sample,hz=f})
  elseif patch.is_molly() then
    engine.noteOff(f)
  elseif patch.is_choir() then
    engine.noteOff(f)
  elseif patch.is_synthy() then
    engine.synthy_note_off(pf.hz_to_midi(f))
  end
end

return patch