include Math

print "Enter x: \n"
$x = gets.chomp.to_f

print "Enter b: \n"
$b = gets.chomp.to_f

print "Enter gamma: \n"
$gamma = gets.chomp.to_f

$result = Math.acos(Math.sin($x/2) /($b-1) ** (1.0/3)) + Math.log(Math.exp($gamma) + 4.1* 10 ** 2.1) / Math.tan(PI/4 + $x/2)

puts "Result: " << $result.to_s
