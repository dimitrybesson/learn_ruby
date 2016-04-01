def ftoc(f)
  c = (f - 32.0) * 5 / 9
  c.round
end

def ctof(c)
  f = (9.0 / 5.0 * c) + 32
  f.round
end
