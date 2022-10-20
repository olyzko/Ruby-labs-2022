print "Enter x begin:\n"
x_begin = gets.chomp.to_f
print "Enter x end:\n"
x_end = gets.chomp.to_f

print "Enter a,b,c:\n"
a = gets.chomp.to_f
b = gets.chomp.to_f
c = gets.chomp.to_f

print "Enter dx:\n"
delta = gets.chomp.to_f

def func(x_begin, x_end, a, b, c, delta)
  result = []
  (x_begin..x_end).step(delta) do |i|
    if c < 0 && a != 0
      f = -a * i ** 2
    else
      if c > 0 && a == 0
        f = (a - i) / c * i
      else
        f = i / c
      end
    end
    result.push(f)
  end

  if(a.truncate % b.truncate) == 0 and (a.truncate or c.truncate) != 0
    result.length.times do |i|
      result[i] = result[i].to_i
    end
  end
  result
end

print "Result: #{func(x_begin, x_end, a, b, c, delta)} \n"


def tests
  test1
  test2
  test3
end

def test1
  x_begin = 1
  x_end = 4
  a = 1
  b = 1
  c = 2
  delta = 0.5

  expected = [0, 0, 1, 1, 1, 1, 2]

  result = func(x_begin, x_end, a, b, c, delta)

  result.length.times do |i|
    if (result[i] - expected[i]).abs > 0.0001
      puts "Test 1 failed"
      return
    end
  end

  puts "Test 1 passed"
end

def test2
  x_begin = 1
  x_end = 4
  a = 3.2
  b = 2
  c = -4
  delta = 0.5

  expected = [-3.2, -7.2, -12.8, -20.0, -28.8, -39.2, -51.2]

  result = func(x_begin, x_end, a, b, c, delta)

  result.length.times do |i|
    if (result[i] - expected[i]).abs > 0.0001
      puts "Test 2 failed"
      return
    end
  end

  puts "Test 2 passed"
end

def test3

  x_begin = 1
  x_end = 4
  a = 0
  b = 2
  c = 5
  delta = 0.5

  expected = [-0.2, -0.45, -0.8, -1.25, -1.8, -2.45, -3.2]

  result = func(x_begin, x_end, a, b, c, delta)

  result.length.times do |i|
    if (result[i] - expected[i]).abs > 0.0001
      puts "Test 3 failed"
      return
    end
  end

  puts "Test 3 passed"
end

tests


