# frozen_string_literal: true

def check_magazine(magazine, note)
  # This differs from the actual question because Hackerrank
  # does the splitting for us before passing it to the method.
  # Meaning the next two methods are not required in the solution online.
  magazine_words = magazine.split(' ')
  note_words = note.split(' ')

  return 'No' if magazine_words.count < note_words.count
  word_hash = {}
  magazine_words.each do |word|
    word_hash[word] = word_hash[word] ? word_hash[word] += 1 : 1
  end
  errors = 0

  note_words.each do |word|
    break errors += 1 unless word_hash[word]
    break errors += 1 if word_hash[word] < 1

    word_hash[word] -= 1
  end

  errors.zero? ? 'Yes' : 'No'
end
