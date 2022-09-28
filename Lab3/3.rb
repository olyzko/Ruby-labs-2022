def task2
  sum = 0
  8.times.each { |i|
    sum += 1.0 / (3 ** i)
  }
  sum
end

def task3(x)
  print "Enter n:"
  n = gets.to_i

  sum = 0
  fact = 1
  n.times.each { |i|
    sum += (x ** i) / fact
    fact *= (i + 1)
  }
  sum
end

puts "Task2: #{task2}"

print "Task 3: Enter x:"
x = gets.to_i
puts "Task3: #{task3(x)}"
