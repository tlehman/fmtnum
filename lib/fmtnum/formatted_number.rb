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

  DIGITS = %w{one two three four five six seven eight nine ten}

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
end
