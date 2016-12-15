class PigLatinizer

  def piglatinize(word)
    if word.downcase.index(/[aeiou]/) == 0
      # Do the vowel thing
      l_word = "#{word}way"
    else
      cleave = word.downcase.index(/[aeiou]/)
      l_word = "#{word[cleave..-1]}#{word[0..(cleave-1)]}ay"
    end
    l_word
  end

  def to_pig_latin(phrase)
    phrase.split(" ").map {|word| piglatinize(word)}.join(" ")
  end

end
