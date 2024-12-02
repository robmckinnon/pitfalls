local patch = {}

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

function patch.is_mx_samples()
  return engine.name and engine.name == "MxSamples" or false
end

function handle_load(x)
  print("handle_load"..engine.name)
  if engine.name == "MxSamples" then
    mx_sample=mx_samples[2]
    skeys = mxsamples:new()
  end
end

function patch.load_engine(name)
  if name ~= engine.name then
    engine.load(name, handle_load)
  end
end

return patch