local patch = {}

local mx_samples = {}
local mxsamples=nil
local mx_sample=nil
local skeys=nil

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

function patch.is_mx_samples()
  return engine.name and engine.name == "MxSamples" or false
end

function patch.handle_load(x)
  print("handle_load"..engine.name)
  if engine.name == "MxSamples" then
    if mxsamples == nil then
      mxsamples=include("mx.samples/lib/mx.samples")
    end
    skeys = mxsamples:new()
  end
end

function patch.load_engine(name)
  if name ~= engine.name then
    engine.load(name, patch.handle_load)
  end
end

function patch.load_patch(name)
  if name ~= mx_sample then
    mx_sample=name
  end
end

function patch.pitch_on(f)
  if engine.is_loading then
    return
  end
  if patch.is_mx_samples() then
    skeys:on({name=mx_sample,hz=f,midi=0,velocity=120})
  else
    engine.hz(f)
  end
end

function patch.pitch_off(f)
  if engine.is_loading then
    return
  end
  if patch.is_mx_samples() then
    skeys:off({name=mx_sample,hz=f})
  end
end

return patch