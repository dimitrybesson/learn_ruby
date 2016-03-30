def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

# def sum(array)
#   array.reduce(0, :+)
# end

def sum(array)
  array.reduce(0) { |sum, number| sum + number }
end

def product(*numbers)
  numbers.reduce { |product, number| product * number }
end

def factorial(number)
  if number == 0
    return 1
  elsif number == 1 || number == 2
    return number
  else
    return number * factorial(number - 1)
  end
end
