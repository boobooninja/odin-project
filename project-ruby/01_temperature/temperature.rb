def ftoc(f_temp)
  ((f_temp.to_f - 32) / 9 * 5).round(1)
end

def ctof(c_temp)
  (c_temp.to_f * 9 / 5 + 32).round(1)
end
