def translate(words)
  vowels = ['a','e','i','o','u']
  ending = 'ay'

  word_array = words.split

  word_array.map! do |word|
    first  = ""

    while vowels.include?(word[0]) == false
      this_letter = word.slice!(0)
      first += this_letter

      next_letter = word[0]

      if this_letter == 'q' && next_letter == 'u'
        first += word.slice!(0)
      end
    end

    word += first + ending
  end

  word_array.join(' ')
end
