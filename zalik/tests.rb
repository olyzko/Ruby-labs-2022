require 'date'
require 'minitest/autorun'

require_relative 'olyzko_IPS_31'

class Org_test < Minitest::Test

  def setup
    ev1 = SportsEvent.new("World Cup final", Date.new(2022, 12, 18), 5, "football")
    ev2 = Holiday.new("New Year", Date.new(2023, 1, 1), 3, "international", 365)
    ev3 = Event.new("Exam", Date.new(2022, 12, 16), 1)
    ev4 = PoliticalEvent.new("Congress election", Date.new(2022, 11, 8), 4, "USA")
    ev5 = SportsEvent.new("Monaco Grand Prix", Date.new(2023, 5, 28), 6, "motorsport")
    ev6 = Holiday.new("Independence Day", Date.new(2022, 8, 24), 2, "Ukraine", 365)
    arr = []
    arr.push(ev1, ev2, ev3, ev4, ev5, ev6)
    @events = Organiser.new(arr)
  end

  def test_1
    res = @events.sort_by_date.map{|event| event.name}
    sorted_arr = ["Independence Day", "Congress election", "Exam", "World Cup final", "New Year", "Monaco Grand Prix"]
    assert_equal res, sorted_arr

    puts res
  end

  def test_2
    res = @events.sort_by_category.map{|event| event.name}
    sorted_arr = ["Exam", "Independence Day", "New Year", "Congress election", "World Cup final", "Monaco Grand Prix"]
    assert_equal res, sorted_arr

    puts res
  end

  def test_3
    res = @events.get_by_date(Date.new(2022, 8, 24)).map{|event| event.name}
    assert_equal res, ["Independence Day"]

    puts res
  end

  def test_4
    res = @events.get_by_range(Date.new(2023, 1, 1), Date.new(2023, 9, 9)).map{|event| event.name}
    assert_equal res, ["New Year", "Monaco Grand Prix"]

    puts res
  end

  def test_5
    res = @events.get_closest_event(Date.new(2022, 12, 8)).name
    assert_equal res, "Exam"

    puts res
  end
end

