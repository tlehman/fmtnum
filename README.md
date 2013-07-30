# fmtnum

Command line utility to format a number with commas, and (optionally) output the word for the number.

For example, `fmtnum 1000000` would output `1,000,000`, and 
`fmtnum -w 1000000` would output `one million`

## Installation

    $ gem install fmtnum

## Usage

    $ fmtnum 20100102030304
    20,100,102,030,304

## To-Do
 - word mode (3020 => 'three thousand twenty')

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
