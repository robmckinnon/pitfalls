local parameters = {}
local grid_libs = {"grid", "midigrid/lib/mg_128", "midigrid/lib/midigrid", "midigrid/lib/mg_256"}
local arp_opts = {"off", "scale_up", "scale_down", "chord", "chords"}
local enable_opts = {"disabled", "enabled"}
local engines = {"PolyPerc", "MollyThePoly", "MxSamples", "Synthy"}

local patches = patch.mx_samples()

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
  -- params:add_group("PITFALLS", 7 + (18 * 4 + 1) + 2)
  params:add_group("PITFALLS", 17)
  params:add_text("pitfalls_sequence", "sequence", "LLsLLLs")
  params:add_number("pitfalls_L", "L", 2)
  params:add_number("pitfalls_M", "M", 2)
  params:add_number("pitfalls_s", "s", 1)
  params:add_number("pitfalls_tuning", "tuning", 400, 480, 440)
  params:add_number("pitfalls_tonic", "tonic", 1)
  params:add_number("pitfalls_mode", "mode", 1)
  params:add_number("pitfalls_midi_no_start", "midi_start", 60, 71, 60)
  params:add_control("pitfalls_cutoff", "cutoff", controlspec.new(50, 5000, 'exp', 0, 555, 'hz'))
  params:add_number("pitfalls_octave", "octave", 0,8,3)
  params:add_option("pitfalls_grid_lib", "grid_lib", grid_libs, 3)
  params:add_option("pitfalls_arpeggiate", "arpeggiate", arp_opts, 1)
  params:add_option("pitfalls_engine", "engine", engines, 2)
  params:add_option("pitfalls_patch", "patch", patches, 1)
  params:add_control("pitfalls_tempo_div", "tempo_div", controlspec.new(0.25, 64, 'lin', 0.25, 8, 'd'))

  params:add_number("pitfalls_in_virtual_port", "midi in port", 1, 16, 1)
  params:add_number("pitfalls_out_virtual_port", "midi out port", 1, 16,2)
  -- add_midi_channel_params()

  -- read default [scriptname]-01.pset from local data folder  
  params:read(norns.state.data .. "pitfalls-01.pset", true)
end

function parameters.engine()
  return engines[params:get("pitfalls_engine")]
end

function parameters.patch()
  return patches[params:get("pitfalls_patch")]
end

function parameters.grid_lib()
  return grid_libs[params:get("pitfalls_grid_lib")]
end

function parameters.inc_arpeggiate()
  local i = (params:get("pitfalls_arpeggiate") % #arp_opts) + 1
  params:set("pitfalls_arpeggiate", i)
end
  
function parameters.arpeggiate()
  return arp_opts[params:get("pitfalls_arpeggiate")]
end

return parameters
