require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/character'
require './lib/show'
require './lib/network'

class NetworkTest < Minitest::Test
  def test_it_exists_and_has_a_name
    nbc = Network.new("NBC")

    assert_instance_of Network, nbc
  end

  def test_it_can_have_shows
    nbc = Network.new("NBC")

    assert_equal [], nbc.shows
  end

  def test_it_can_add_and_display_shows
    nbc = Network.new("NBC")
      knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
        kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
        michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
      parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [leslie_knope, ron_swanson])
        leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
        ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})

    network.add_show(knight_rider)
    network.add_show(parks_and_rec)

    assert_equal [knight_rider, parks_and_rec], nbc.shows
  end

  def test_showing_who_is_highest_paid_actor
    skip
    nbc = Network.new("NBC")
      knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
        kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
        michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
      parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [leslie_knope, ron_swanson])
        leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
        ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})

    network.add_show(knight_rider)
    network.add_show(parks_and_rec)

    assert_equal [knight_rider, parks_and_rec], nbc.shows
  end

  def test_that_it_can_show_payroll
    skip
    nbc = Network.new("NBC")
      knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
        kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
        michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
      parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [leslie_knope, ron_swanson])
        leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
        ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})

    network.add_show(knight_rider)
    network.add_show(parks_and_rec)

    assert_equal {"David Hasselhoff" => 1600000, "William Daniels" => 1000000, "Amy Poehler" => 2000000, "Nick Offerman" => 1400000}, nbc.payroll
  end

end
