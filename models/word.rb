module Word
  def self.words
    %w[metodo classe herança sobrescrita super]
  end

  def self.review_character(arr, word, character)
    word.split('').each_index.select do |index|
      arr[index] = character if word[index] == character
    end
    arr
  end
end
