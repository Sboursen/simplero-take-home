def format(s)
  only_digits = s.gsub(/[^0-9]/) {|nonInt| ''}

  return only_digits.scan(/\d{3}/).join('-') if only_digits.length % 3 == 0
  return only_digits[0...-4].scan(/\d{3}/).join('-') + '-' + only_digits[-4...-2] + '-' + only_digits[-2..] if only_digits.length % 3 == 1
  only_digits[0...-2].scan(/\d{3}/).join('-') + '-' + only_digits[-2..] if only_digits.length % 3 == 2
  
end
