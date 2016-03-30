def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, repetitions = 2)
  repetitions.times.collect { string }.join(" ")
end

def start_of_word(string, number)
  string[0..(number - 1)]
end

def first_word(string)
  string.split(" ")[0]
end

# EXCEPTIONS = %w(of and the over)
# def titleize(string)
#   words = string.split(" ")
#   words.map! do |word|
#     if word == words.first
#       word.capitalize
#     elsif EXCEPTIONS.include?(word)
#       word
#     else
#       word.capitalize
#     end
#   end
#   words.join(" ")
# end

#Aternatively:
EXCEPTIONS = %w(of and the over)

def titleize(string)
  words = string.split(" ")
  words.map! do |word|

    unless EXCEPTIONS.include?(word) && word != words.first
      word.capitalize
    else
      word
    end

  end
  words.join(" ")
end
