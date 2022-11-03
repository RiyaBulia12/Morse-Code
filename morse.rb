@morse_code_dictionary = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  '-----' => '0',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9'
}

def decode_morse_code(code)
  if code.split.length == 1
    decode_char(code)
  elsif code.include?('  ')
    decode_message(code)
  else
    decode_word(code)
  end
end

def decode_char(code)
  print @morse_code_dictionary[code]
end

def decode_word(code)
  code = code.split
  code.each do |c|
    decode_char(c)
  end
end

def decode_message(code)
  code = code.split('  ')
  code.each do |c|
    decode_word(c)
    print ' '
  end
end

print 'Please enter morse code you want to convert to english:  '
morse_code = gets.chomp
decode_morse_code(morse_code)
