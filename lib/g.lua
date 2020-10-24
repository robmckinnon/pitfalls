local grid = include('midigrid/lib/mg_128')
local g = grid.connect()

function g.init()
  g.gfreqs = {}
  g.xleds = {}
  g.aleds = {}
  g.freqxy = {}
  for x = 1,16 do
    g.xleds[x] = {}
    g.aleds[x] = {}
  end
  for y = 1,8 do
    for x = 1,16 do
      g:led(x, y, 1)
    end
  end
  g:refresh()
end
  
function g.key(x, y, z)
  local grid_h = g.rows
  local grid_w = g.cols
  local f = g.gfreqs[8 - y + 1][x]

  if z > 0 then
    if g.freqxy[f]~=nil then
      for i,xy in pairs(g.freqxy[f]) do
        g:led(xy[1], xy[2], util.clamp(g.aleds[x][y], 1, 15))
      end
    end
    engine.hz(f)
  else
    if g.freqxy[f]~=nil then
      for i,xy in pairs(g.freqxy[f]) do
        g:led(xy[1], xy[2], g.xleds[x][y])
      end
    end
  end
  g:refresh()
end

function g.update_grid(scale, intervals, pitches)
  local offset = intervals:nearest_degree_to(3/2, nil) - 1
  local index = 0
  local degree = nil
  local freqsxy = {}

  for row = 1,8 do
    g.gfreqs[row] = {}
    index = 1 + ((row - 1) * offset)
    for col = 1,16 do
      degree = pitches:degree(index)
      fn.dprint("---", col)
      fn.dprint("", degree)
      fn.dprint("degree", degree)
      x = col
      y = 8 - row + 1
      f = pitches:freq(index)
      if f == nil then
        print("f nil")
        print("index "..index)
      else
        fn.dprint("f", f)
        g.gfreqs[row][col] = f
        if pcall(freqsxy, f) then
          -- we're good
        else
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

