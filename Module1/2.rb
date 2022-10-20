class Car

  def initialize(id, brand, model, year, color, cost, registration_number)
    @id = id
    @brand = brand
    @model = model
    @year = year
    @color = color
    @cost = cost
    @registration_number = registration_number
  end

  attr_accessor :id, :brand, :model, :floor, :year, :color, :cost, :registration_number

  def to_s
    @id.to_s + " " + @brand.to_s + " " + @model.to_s + " " + @year.to_s + " " + @color + \
  " " + @cost.to_s + " " + @registration_number.to_s
  end
end

def task1 (car_list, brand)
  car_list.select { |car| car.brand == brand }.map(&:to_s)
end

def task2 (car_list, brand, year)
  current_year = Time.new.year
  car_list.select { |car| car.brand == brand and current_year - car.year > year }.map(&:to_s)
end

def task3 (car_list, year, cost)
  car_list.select { |car| car.year == year and car.cost > cost }.map(&:to_s)
end

car_list = [
Car.new(23, "Audi", "A8", 2017, "Gray", 15000, 69511),
Car.new(48, "Volkswagen", "Tiguan", 2020, "White", 18500, 18172),
Car.new(77, "BMW", "X5", 2014, "Black", 11000, 33181),
Car.new(12, "Honda", "Accord", 2009, "Green", 40000, 44841),
Car.new(5, "Honda", "Civic", 2017, "Red", 7500, 12407),
Car.new(27, "Zaporozhets", "ZAZ-965", 1960, "Blue", 1600, 28774),
]

puts "Enter brand:"
a_brand = gets.chomp.to_s
puts task1(car_list, a_brand)


puts "Enter brand:"
b_brand = gets.chomp.to_s
puts "Enter exploitation years number:"
b_years = gets.chomp.to_f
puts task2(car_list, b_brand, b_years)

puts "Enter year of issue:"
c_year = gets.chomp.to_f
puts "Enter cost:"
c_cost = gets.chomp.to_f
puts task3(car_list, c_year, c_cost)


def test1(car_list)
  brand = "Volkswagen"
  expected = [car_list[1].to_s]
  if expected == task1(car_list, brand)
    puts "Test 1 passed"
    return
  end

  puts "Test 1 failed"
end


def test2(car_list)
  brand = "Honda"
  year = 4
  expected = [car_list[3].to_s, car_list[4].to_s]
  if expected == task2(car_list, brand, year)
    puts "Test 2 passed"
    return
  end

  puts "Test 2 failed"
end


def test3(car_list)
  year = 2017
  cost = 12500
  expected = [car_list[0].to_s]
  if expected == task3(car_list, year, cost)
    puts "Test 3 passed"
    return
  end

  puts "Test 3 failed"
end

test1(car_list)
test2(car_list)
test3(car_list)