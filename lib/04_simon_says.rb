def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, n = 2)
  ([word] * n).join(" ")
end

def start_of_word(word, n)
  word[0, n]
end

def first_word(sentence)
  sentence.split.first
end

def titleize(sentence)
  little_words = ["and", "or", "the"]
  words = sentence.split
  words.map!.with_index do |word, index|
    if index == 0 || !little_words.include?(word)
      word.capitalize
    else
      word
    end
  end
  words.join(" ")
end
