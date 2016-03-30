# Adds number1 and number2
def add(number1, number2)
  number1 + number2
end

# Subtracts number2 from number1
def subtract(number1, number2)
  number1 - number2
end

# Takes an array of numbers and returns the sum of all the numbers
def sum(numbers)
  # total = 0
  # numbers.each { |number| total += number }
  # total

  # Using inject
  numbers.inject(0) { |memo, obj| memo + obj }
end
