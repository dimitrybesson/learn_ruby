def sum(array)
  array.reduce(0) { |sum, number| sum + number }
end

#p sum(1, 2, 3)

p sum([1, 4, 7])

p sum([])

p sum([3, -1])
