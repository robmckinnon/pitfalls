Intervals = {}

local BLANK = ""

function Intervals:new(scale)
  local s = setmetatable({}, { __index = Intervals })

  s.scale = scale
  s.int_labels = {}
  s.int_ratios = {}
  s.uniq_labels = {}
  s.int_errors = {}
  s.divisions = {}
  s.ratios = {}

  local division = 0
  local lab_to_err = {}
  local lab_to_ind = {}

  s.ratios[1] = 1
  for i = 1,scale.length do
    division = division + scale:step_value(i)
    s.divisions[i] = division
    s.ratios[i+1] = pf.ratio(division, scale.edivisions)

    if (i < scale.length) then
      local nearest = pf.nearest_interval2(s.ratios[i+1], ratiointervals)
      local closeness = nearest[1]
      local ratio = nearest[2]
      local int_label = ratiointervals.key(ratio)
      s.int_labels[i+1] = int_label
      s.int_errors[i+1] = closeness
      s.int_ratios[i+1] = (ratio == nil and "") or tostring(ratiointervals.nom(ratio)).."/"..tostring(ratiointervals.denom(ratio))
      s.uniq_labels[i+1] = BLANK

      if int_label ~= "" and int_label ~= "P1" and int_label ~= "P8" then
        if (lab_to_err[int_label] == nil) then
          s.uniq_labels[i+1] = int_label
          lab_to_ind[int_label] = i+1
          lab_to_err[int_label] = closeness
        elseif (closeness < lab_to_err[int_label]) then
          s.uniq_labels[lab_to_ind[int_label]] = BLANK
          s.uniq_labels[i+1] = int_label
          lab_to_ind[int_label] = i+1
          lab_to_err[int_label] = closeness
        end
        pf.dprint(i+1, int_label)
      end
    end
  end

  return s
end

function Intervals:ratio(i)
  return self.ratios[ i ]
end

function Intervals:interval_label(i)
  return self.int_labels[ i ]
end

function Intervals:interval_ratio(i)
  return self.int_ratios[ i ]
end

function Intervals:uniq_interval_label(i)
  -- print(i)
  tabutil.print(self.uniq_labels)
  return self.uniq_labels[ i ]
end

function Intervals:interval_error(i)
  return self.int_errors[ i ]
end

function Intervals:nearest_degree_to(r, threshold)
  local min = 1
  local degree = nil
  for i, v in pairs(self.ratios) do
    diff = math.abs( (r - v) / r )
    if diff < min then
      min = diff
      degree = i
    end
  end
  if threshold == nil then
    return degree
  else
    return (min < threshold and degree) or 1
  end
end

-- print('nearest P4', nearest_degree_to(4/3))
-- for lab, chord in pairs(chords) do
--   local match = true
--   for i, interval in pairs(chord) do
--     if intervals[interval] == nil then
--       match = false
--     end
--   end
--   if match then
--     pf.dprint(lab, chord)
--   end
-- end
-- print("--")
