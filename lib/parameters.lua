local parameters = {}
local grid_libs = {"grid", "midigrid/lib/mg_128", "midigrid/lib/midigrid"}

function parameters.init()
  params:add_group("PITFALLS", 6)
  params:add_text("sequence", "sequence", "LLsLLLs")
  params:add_number("tuning", "tuning", 400, 480, 440)
  params:add_number("midi_start", "midi_start", 60, 71, 60)
  params:add_control("cutoff", "cutoff", controlspec.new(50, 5000, 'exp', 0, 555, 'hz'))
  params:add_number("octave", "octave", 0,8,3)
  params:add_option("grid_lib", "grid_lib", grid_libs, 1)

  -- read default [scriptname]-01.pset from local data folder  
  params:read()
end

function parameters.grid_lib()
  return grid_libs[params:get("grid_lib")]
end

return parameters

