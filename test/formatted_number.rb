require 'minitest/autorun'
require 'fmtnum/formatted_number'
require 'turn'

class TestFmtnum < Minitest::Unit::TestCase
  def test_number?
    ["10.23", "-33932", "102299929", "111012912555", "24021941284982148218"].each do |snum|
      assert FormattedNumber.new(snum).number?
    end
  end

  def test_pronounce
    {"1000000" => "one million",
     "3000000000" => "three billion",
     "700000000000" => "seven hundred trillion",
     "2,032,140,001,241" => "two billion thirty two million one hundred fourty thousand one thousand two hundred fourty one"}.each do |snum,wnum|
      assert_equal wnum, FormattedNumber.new(snum).pronounce
    end
  end
end
