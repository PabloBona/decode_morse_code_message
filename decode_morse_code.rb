class MorseDecoder
  MORSE_CODE = { # Capital letters beacuse it's a constant
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z', ' ' => ' '
  }.freeze

  # Create a method to decode a Morse code character, takes a string, and return
  # the corresponding character in uppercase (e.g. decode_char(".-") returns "A").
  def decode_char(char)
    MORSE_CODE[char]
  end

  def decode_word(word)
    word.split.map { |char| decode_char(char) }.join
  end
end
