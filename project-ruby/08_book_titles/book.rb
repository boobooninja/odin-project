class Book
  attr_reader :title

  def title= string
    @title = format_title(string)
  end

  private

  def format_title(string)
    name_array = string.split
    exception_words = ['the', 'a', 'an', 'in', 'and', 'of']

    name_array.map!.with_index do |word, i|
      if exception_words.include?(word) && i != 0
        word
      else
        word.capitalize
      end
    end

    name_array.join(' ')
  end
end
