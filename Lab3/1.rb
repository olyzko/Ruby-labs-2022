#Variant 8

A = false
B = false
C = true
X = 1
Y = 16
Z = -40

def task_a(a, b)
  !(a or b) and (a and !b)
end

def task_b(a, b, c, x, y, z)
  (z != y) or (6 >= y) and a or b and c and (x >= 1.5)
end

def task_c(x, y, z)
  (8-x*2 <= z) and (x**2 >= y**2) or (z >= 15)
end

def task_d(x, y, z)
  (x > 0) and (y < 0) or z >= (x*y + (-y/x)) -z * (-2)
end

def task_g(a, b, c)
  !(a or b and !(c or (!a and b)))
end

def task_h(x, y)
  (x**2 + y**2) >= 1 or (x >= 0) or (y >= 0)
end

def task_i(a, b, c)
  (a and (c and b != b or a) or c) and b
end

def extra(m, n, p, q)
  (p and q) == !(!p or !q) and (Math.sqrt(m) + Math.sqrt(-n) < 4) and (m + n < 1)
end

puts "Task A: #{task_a(A, B)}"
puts "Task B: #{task_b(A, B, C, X, Y, Z)}"
puts "Task C: #{task_c(X, Y, Z)}"
puts "Task D: #{task_d(X, Y, Z)}"
puts "Task G: #{task_g(A, B, C)}"
puts "Task H: #{task_h(X, Y)}"
puts "Task I: #{task_i(A, B, C)}"

n = -2
m = 1
p = true
q = true
puts "Extra task: #{extra(m, n, p, q)}"