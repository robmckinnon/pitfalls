local parameters = {}
local grid_libs = {"grid", "midigrid/lib/mg_128", "midigrid/lib/midigrid"}
local arp_opts = {"off", "scale_up", "scale_down", "chord", "chords"}
local enable_opts = {"disabled", "enabled"}

function parameters.hide_channel_params(i)
  for c=1,16 do
    params:hide("device_"..i.."_channel_"..c)
  end
  -- params:bang()
end

function parameters.show_channel_params(i)
  for c=1,16 do
    params:show("device_"..i.."_channel_"..c)
  end
  -- params:bang()
end

function add_midi_channel_params()
  local key
  for i=1,4 do
    params:add_separator()
    key = "device_"..i
    params:add_option(key, "midi device "..i, enable_opts, 1)
    -- params:set_action(key, function (x)
    --   print(x)
    --   if x == 1 then
    --     parameters.hide_channel_params(i)
    --   else
    --     parameters.show_channel_params(i)
    --   end
    -- end)
    key = "device_"..i
    for c=1,16 do
      key = "device_"..i.."_channel_"..c
      params:add_option(key, "  ch "..c, enable_opts, 1)
    end
  end
  params:add_separator()
end

function parameters.init()
  params:add_group("PITFALLS", 7 + (18 * 4 + 1))
  params:add_text("sequence", "sequence", "LLsLLLs")
  params:add_number("tuning", "tuning", 400, 480, 440)
  params:add_number("midi_start", "midi_start", 60, 71, 60)
  params:add_control("cutoff", "cutoff", controlspec.new(50, 5000, 'exp', 0, 555, 'hz'))
  params:add_number("octave", "octave", 0,8,3)
  params:add_option("grid_lib", "grid_lib", grid_libs, 1)
  params:add_option("arpeggiate", "arpeggiate", arp_opts, 1)

  add_midi_channel_params()

  -- read default [scriptname]-01.pset from local data folder  
  params:read()
end

function parameters.grid_lib()
  return grid_libs[params:get("grid_lib")]
end

function parameters.inc_arpeggiate()
  local i = (params:get("arpeggiate") % #arp_opts) + 1
  params:set("arpeggiate", i)
end
  
function parameters.arpeggiate()
  return arp_opts[params:get("arpeggiate")]
end

return parameters
