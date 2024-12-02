local grid_lib = parameters.grid_lib()
local g = nil

if grid_lib ~= "grid" then
  print("grid_lib", grid_lib)
  local grid = include(grid_lib)
  g = grid.connect()
else
  g = grid.connect()
end

local pitch_on
local pitch_off

function g.init(on_callback, off_callback)
  local grid_h = g.rows
  local grid_w = g.cols
  g.gfreqs = {}
  g.xleds = {}
  g.aleds = {}
  g.freqxy = {}
  g.degs = {}
  for x = 1,grid_w do
    g.xleds[x] = {}
    g.aleds[x] = {}
  end
  pitch_on = on_callback
  pitch_off = off_callback
end

function g.led_on(f)
  if g.freqxy[f]~=nil then
    for i,xy in pairs(g.freqxy[f]) do
      g:led(xy[1], xy[2], util.clamp(g.aleds[xy[1]][xy[2]], 1, 15))
    end
  end
  g:refresh()
end

function g.led_off(f)
  if g.freqxy[f]~=nil then
    for i,xy in pairs(g.freqxy[f]) do
      g:led(xy[1], xy[2], g.xleds[xy[1]][xy[2]])
    end
  end
  g:refresh()
end

function g.key(x, y, z)
  local grid_h = g.rows
  local grid_w = g.cols
  local f = g.gfreqs[grid_h - y + 1][x]
  if z > 0 then
    -- midi_out.note_on_pitch_bend(f)
    g.led_on(f)
    pitch_on(f, 120, g.degs[f])
  else
    -- midi_out.all_notes_off()
    g.led_off(f)
    pitch_off(f, g.degs[f])
  end
end

function g.update_grid(scale, intervals, pitches)
  local grid_h = g.rows
  local grid_w = g.cols
  local offset = intervals:nearest_degree_to(3/2, nil) - 1
  local index = 0
  local degree = nil
  local freqsxy = {}
  local degs = {}

  for row = 1,grid_h do
    g.gfreqs[row] = {}
    index = 1 + ((row - 1) * offset)
    for col = 1,grid_w do
      degree = pitches:degree(index)
      pf.dprint("---", col)
      pf.dprint("", degree)
      pf.dprint("degree", degree)
      x = col
      y = grid_h - row + 1
      f = pitches:freq(index)
      if f == nil then
        print("f nil")
        print("index "..index)
      else
        g.gfreqs[row][col] = f
        if freqsxy[f] == nil then
          freqsxy[f] = {}
        end
        degs[f] = degree
        freqsxy[f][#(freqsxy[f])+1] = {x, y}
      end

      if degree == 1 then
        g.xleds[x][y] = 16 - degree
        g.aleds[x][y] = 16 - degree - 1
      else
        g.xleds[x][y] = 0
        if degree == nil then
          g.aleds[x][y] = 0
        else
          g.aleds[x][y] = 16 - degree
        end
      end
      pf.dprint('x',x)
      pf.dprint('y',y)
      pf.dprint('c',g.xleds[x][y])
      g:led(x, y, g.xleds[x][y])
      index = index + 1
    end
  end
  g.degs = degs
  g.freqxy = freqsxy
  g:refresh()
end

return g
