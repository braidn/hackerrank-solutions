# frozen_string_literal: true

def two_strings(str1, str2)
  return 'YES' if str1 == str2

  result = 'NO'

  hashed_test_string = str1.chars.to_h { |char| [char, 1] }
  str2.chars.each do |char|
    break result = 'YES' if hashed_test_string[char]
  end

  result
end
