local grid_lib = parameters.grid_lib()
local g = nil

if grid_lib ~= "grid" then
  print("grid_lib", grid_lib)
  local grid = include(grid_lib)
  g = grid.connect()
else
  g = grid.connect()
end

function g.init()
  print("g.init", g)
  local grid_h = g.rows
  local grid_w = g.cols
  g.gfreqs = {}
  g.xleds = {}
  g.aleds = {}
  g.freqxy = {}
  for x = 1,grid_w do
    g.xleds[x] = {}
    g.aleds[x] = {}
  end
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
    g.led_on(f)
    engine.hz(f)
  else
    g.led_off(f)
  end
end

function g.update_grid(scale, intervals, pitches)
  local grid_h = g.rows
  local grid_w = g.cols
  local offset = intervals:nearest_degree_to(3/2, nil) - 1
  local index = 0
  local degree = nil
  local freqsxy = {}

  for row = 1,grid_h do
    g.gfreqs[row] = {}
    index = 1 + ((row - 1) * offset)
    for col = 1,grid_w do
      degree = pitches:degree(index)
      fn.dprint("---", col)
      fn.dprint("", degree)
      fn.dprint("degree", degree)
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
      fn.dprint('x',x)
      fn.dprint('y',y)
      fn.dprint('c',g.xleds[x][y])
      g:led(x, y, g.xleds[x][y])
      index = index + 1
    end
  end
  g.freqxy = freqsxy
  g:refresh()
end

return g
