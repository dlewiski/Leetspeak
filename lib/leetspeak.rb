class String
  def leetspeak()
    leet_array = []
    new_words_array = []
    words_array = self.split()
    words_array.each do |word|
      letters_array = word.split('')
      letters_array.each do |letter|
        if letter == "e"
          letter = 3
          new_words_array.push(letter)
        elsif letter == "o"
          letter = 0
          new_words_array.push(letter)
        elsif letter == "I"
          letter = 1
          new_words_array.push(letter)
        elsif (letter == "s") && (letters_array[letters_array.index(letter) - 1] != " ")
          letter = "z"
          new_words_array.push(letter)
        else
          new_words_array.push(letter)
        end

      end
    leet_array = new_words_array.join()
    binding.pry
    end
  leet_array
  end
end


# leet_array.push(new_words_array)
# leet_array.join('')
