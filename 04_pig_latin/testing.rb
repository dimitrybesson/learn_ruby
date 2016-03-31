require 'byebug'

def translate(string)
  punctuation = %w[, . / ? ! ; : "] # I am going to not bother with - in the middle of word for now
  punctuation_hash = {}
  words = string.split(" ")
  words.map! do |word|

    if punctuation.include?(word[-1])
      punctuate = word[-1]
      punctuation_hash[words.index(word)] = punctuate
      word = word[0..(word.length - 2)]
    end


    if word == word.capitalize
      translate_helper(word).capitalize
    else
      translate_helper(word)
    end
  end
  #p punctuation_hash
  p words
  #byebug
  words.map! do |word|
    if punctuation_hash[words.index(words)]
      word = word + punctuation_hash[words.index(word)].to_s #not sure if i need to_s but just in case
    else
      word
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

p translate("banana")

p translate("eat pie")

p translate("the quick brown fox")

p translate("Hello friend")

p translate("Mew friend Jim is coming over")

p translate("My friend Jim is from Denver")

p translate("I")

p translate("Title: Sometimes, there is a pause, and then an end!")
