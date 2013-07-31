require 'minitest/autorun'
require 'fmtnum'

class TestFmtnum < Minitest::Unit::TestCase
  def test_number?
    assert ["10.23", "-33", "102299929", "111012912555"].all? { |snum| ::Num.new(snum).number? }
  end
end
