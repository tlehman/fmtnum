require "fmtnum/version"

class FormattedNumber
  def initialize(input)
    @input = input
  end

  def number?
    !@input.nil? && (@input =~ /^\-?(\d+)(\.\d+)?$/)
  end

  def to_s
    @input.gsub(/(?<=\d)(?=(\d\d\d)+(\b|\.))/, ',')
  end

  def pronounce
    pronounced = ""
    triplets = to_s.split(",")
    len = triplets.length

    triplets.each_with_index do |triplet,index|
      pronounced += pronounce_triplet(triplet)
      pronounced += " " if index < len-2 && pronounce_triplet(triplet)
    end

    pronounced
  end

  DIGITS = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"]
  TENS = ["", "teen", "twenty", "thirty", "fourty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  BIG_NUMBERS = {
    2 => 'hundred',
    3 => 'thousand',
    6 => 'million',
    9 => 'billion',
    12 => 'trillion',
    15 => 'quadrillion',
    18 => 'quintillion',
    21 => 'sextillion',
    24 => 'septillion',
    27 => 'octillion',
    30 => 'nonillion',
    33 => 'decillion',
    36 => 'undecillion',
    39 => 'duodecillion',
    42 => 'tredecillion',
    45 => 'quattuordecillion',
    48 => 'quindecillion',
    51 => 'sexdecillion',
    54 => 'septendecillion',
    57 => 'octodecillion',
    60 => 'novemdecillion',
    63 => 'vigintillion',
    66 => 'unvigintillion',
    69 => 'duovigintillion',
    72 => 'trevigintillion',
    75 => 'quattuorvigintillion',
    78 => 'quinvigintillion',
    81 => 'sexvigintillion',
    84 => 'septenvigintillion',
    87 => 'octovigintillion',
    90 => 'novemvigintillion',
    93 => 'trigintillion',
    96 => 'untrigintillion',
    99 => 'duotrigintillion',
    100 => 'googol'
  }

  private

  # a triplet is a number between 0 and 999 as a string
  def pronounce_triplet(triplet)
    raise "#{triplet} is not a triplet" unless triplet =~ /^\d{1,3}$/
    hund,tens,ones = ("%03d" % triplet).split(//).map(&:to_i)


    pronounced = DIGITS[hund] + (hund==0 ? ' ' : ' hundred ') + TENS[tens] + ' ' + DIGITS[ones]
  end
end
