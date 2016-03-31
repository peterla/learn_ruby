def translate(phrase)
  translated_phrase_array = []
  phrase.split(" ").each do |word|
    translated_phrase_array << translate_word(word)
  end
  translated_phrase_array.join(" ")
end

# Translate a single word; word is assumed to have no spaces or punctuation and have non-zero length
def translate_word(word)

  # Counts the number of consonants the word begins with.
  # If 0, word starts with a vowel.
  # num_starting_consonants = 0

  word.size.times do |index|
    if is_a_vowel(word[index])
      case index
      when 0 # 0 consonants to start

        # Trivial case
        return "#{word}ay"

      when 1 # 1 consecutive consonant - Test for "qu"

        if word[0..1] == "qu"
          if word.size > 2
            return "#{word[index+1..word.size-1]}quay"
          else
            return "quay"
          end
        else
          return "#{word[index..word.size-1]}#{word[0..index-1]}ay"
        end

      when 2 # 2 consecutive consonants - Test for [consonant]qu

        if word[1..2] == "qu"
          if word.size > 3
            return "#{word[index+1..word.size-1]}#{word[0]}quay"
          else
            return "#{word[0]}quay"
          end
        else
          return "#{word[index..word.size-1]}#{word[0..index-1]}ay"
        end

      else # 3 or more consecutive consonants

        return "#{word[index..word.size-1]}#{word[0..index-1]}ay"

      end
    end
  end

  # 3 cases

  # 3 letter pattern

  # 2 letter pattern

  # 1 letter pattern

end

# Returns true if the character passed in is a vowel, false otherwise
# Assumes char is one character
def is_a_vowel(char)
  if (char =~ /[aeiou]/)
    return true
  else
    return false
  end
end
