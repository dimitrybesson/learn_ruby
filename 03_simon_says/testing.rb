string = 'the hello there friend and others'
words = string.split(" ")
exceptions = %w[of and the over]

words.map! do |word|
  if word == words.first
    word.capitalize
  elsif
    exceptions.include?(word)
    word
  else
    word.capitalize
  end

end

p words

p words.join(" ")
