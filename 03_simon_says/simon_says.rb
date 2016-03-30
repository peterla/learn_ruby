def echo(message)
  message
end

def shout(message)
  message.upcase
end

def repeat(message, number=2)
  result = message
  (number-1).times { result = "#{result} #{message}" }
  result
end

def start_of_word(word, number_of_letters)
  word[0..number_of_letters-1]
end

def first_word(message)
  message.split.first
end

def titleize(message)
  # This doesn't exclude 'small words'
  # message.split.map(&:capitalize).join(' ')

  nocaps = ['a', 'and', 'or', 'the', 'over']
  message.split(" ").map.with_index {|word, index| nocaps.include?(word) && index > 0 ? word : word.capitalize }.join(" ")
end
