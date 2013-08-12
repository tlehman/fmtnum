require 'minitest/autorun'
require 'fmtnum/formatted_number'

class TestFmtnum < Minitest::Unit::TestCase
  def test_number?
    ["10.23", "-33932", "102299929", "111012912555", "24021941284982148218"].each do |snum|
      assert FormattedNumber.new(snum).number?
    end
  end
end
