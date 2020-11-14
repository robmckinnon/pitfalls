-- maps ratio labels to ratio fractions
-- ratiointervals = include("pitfalls/lib/ratios")

-- represents intervals for scale in given mode
-- include("pitfalls/lib/Intervals")

ScaleIntervals = {}

-- Holds intervals starting from each degree of the scale.

function ScaleIntervals:new(scale)
  local s = setmetatable({}, { __index = ScaleIntervals })
  
  local sscale = Scale:new(scale.large, scale.small, scale:sequence())
  sscale:update_edo()
  s.degree_to_mode = {}
  s.degree_intervals = {}
  local mode = nil
  local tmp = nil
  for deg = 1,scale.length do
    pf.dprint("deg", deg)
    mode = (scale.mode + deg - 1) % scale.length
    if mode == 0 then
      mode = scale.length
    end
    pf.dprint("mode", mode)
    s.degree_to_mode[deg] = mode
    sscale:set_mode(mode)
    pf.dprint("smode", sscale.mode)
    pf.dprint(":sequence()", sscale:sequence())
    pf.dprint(Intervals.new)
    tmp = Intervals:new(sscale)
    pf.dprint("tmp", tmp)
    s.degree_intervals[deg] = tmp
    pf.dprint("int", s.degree_intervals[deg])
  end

  return s
end

function ScaleIntervals:intervals(deg)
  deg = deg or 1
  return self.degree_intervals[deg]
end
  
function ScaleIntervals:ratio(i, deg)
  return self:intervals(deg).ratios[ i ]
end

function ScaleIntervals:interval_labels(deg)
  return self:intervals(deg).int_labels
end

function ScaleIntervals:interval_label(i, deg)
  return self:intervals(deg).int_labels[ i ]
end

function ScaleIntervals:interval_error(i, deg)
  return self:intervals(deg).int_errors[ i ]
end

function ScaleIntervals:nearest_degree_to(r, threshold)
  return self.degree_intervals[1]:nearest_degree_to(r, threshold)
end

