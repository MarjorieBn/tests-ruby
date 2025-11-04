def translate(sentence)
  words = sentence.split.map do |word|
    translate_word(word)
  end
  words.join(" ")
end

def translate_word(word)
  vowels = %w[a e i o u]

  # Gère les cas spéciaux avec 'qu' et 'sch'
  if word.start_with?(*vowels)
    word + "ay"
  else
    consonant_cluster = word[/\A([^aeiou]*qu|[^aeiou]+)(?=[aeiou])/]
    consonant_cluster ||= word[/\A[^aeiou]+/]
    word[consonant_cluster.length..-1] + consonant_cluster + "ay"
  end
end
