def translate(string)
  words = string.split(" ")
  words.map! do |word|
    if word == word.capitalize
      translate_helper(word).capitalize
    else
      translate_helper(word)
    end
  end
  words.join(" ")
end

def translate_helper(word)
  vowels = %w[a e i o u y]
  word = word.downcase
  if vowels.include?(word[0])
    new_word = word + "ay"
  elsif word[0..1] == "qu"
    new_word = word[2..(word.length - 1)] + word[0..1]
  else #assuming first character is always a letter
    new_word = word[1..(word.length - 1)] + word[0]
  end

  if new_word[-2..-1] == "ay"
    return new_word
  else
    translate(new_word)
  end
end
