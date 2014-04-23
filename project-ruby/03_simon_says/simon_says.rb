def echo(phrase)
  phrase
end

def shout(phrase)
  phrase.upcase
end

def repeat(phrase, num = 2)
  sentence = phrase

  (num - 1).times do
    sentence += " #{phrase}"
  end

  sentence
end

def start_of_word(word, num)
  partial = ""

  num.times { |num| partial += word[num] }

  partial
end

def first_word(sentence)
  sentence.split.first
end

def titleize(sentence)
  word_array = sentence.split

  word_array.map!.with_index do |word,i|
    ['and','over','the'].include?(word) && i != 0 ? word : word.capitalize
  end

  word_array.join(' ')
end
