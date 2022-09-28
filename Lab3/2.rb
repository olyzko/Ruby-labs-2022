def Y(x)
  case x
  when -4..0
    return ((x - 2).abs / (x ** 2 * Math.cos(x))) ** (1.0 / 7.0)
  when 0..12
    return 1.0 / (Math.tan(x + Math.exp(-x)) / Math.sin(x) ** 2) ** (1.0 / 4.5)
  else
    return 1 / (1 + x / (1 + x / (1 + x)))
  end
end

puts "Y(-6) = #{Y(-6)}"
puts "Y(1) = #{Y(1)}"
puts "Y(0) = #{Y(0)}"
puts "Y(27) = #{Y(27)}"
