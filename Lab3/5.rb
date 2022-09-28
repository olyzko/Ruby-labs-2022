#Variant 8
PI = 3.141
N = 10
C = 20

def y(x)
  begin
    return 2 * Math.sqrt(1 + (1/x) * (Math.sqrt(1/x - Math.sqrt(x))) ** 2) /
      (Math.sqrt(1 + (1/N) * (Math.sqrt(1/x - Math.sqrt(x)))) - 0.5 * Math.sqrt(1/x - Math.sqrt(N)))
  rescue
    return 0
  end
end

def z(x)
  ((Math.sin(x) ** 2 + Math.tan(x) ** 2) ** C + 1) * (Math.cos(x) ** 2 -  (1/Math.tan(x)) ** 2 + 1) /
    ((Math.cos(x) ** 2 + (1/Math.tan(x)) ** 2 + 1) * (Math.sin(x) ** 2 + (1/Math.tan(x)) ** 2 - 1))
end

def y_tab
  res = {}
  (1..N).step((N - 1).to_f / (N + C)) do |i|
    puts i
    res[i] = y(i)
  end
  res
end

def z_tab
  res = {}
  i = PI / N
  delta = (PI - PI / N) / ((3.0/2)*N + C)
  while i <= PI do
    res[i] = z(i)
    i += delta
  end

  res
end

def y_z_tab
  res = {}
  (2..C).step((C - 2).to_f / (2*N)) do |j|
    if j > 2 && j < N
      res[j] = y(j)
    elsif j > N && j < 2*N
      res[j] = z(j)
    else
      res[j] = y(j) + z(j)
    end
  end

  res
end

def print_result(dict)
  dict.each { |i|
    print i.to_s + ": " + dict[i].to_s + "\n"
  }

  print "\n"
end


print "__Y_TABULATION__\n"
print_result(y_tab)
print "__Z_TABULATION__\n"
print_result(z_tab)
print "__Y_Z_TABULATION__\n"
print_result(y_z_tab)