fibs = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

twice_fibs = fibs.map { |fib| fib*2}

puts "fibs is #{fibs}"
#if have a longer block

# fibs.map do |fib|
#   fib * 2
# end

#.map in ruby returns an array


# filter version of ruby is selsce

#defining a function
def times_two(number)
  number * 2
end

fibs_filtered = fibs.map { |fib| fib*2}.select { |fib| fib < 10}

#if not fit on one line

filtered = fibs.map do |fib|
  fib * 2
end.select do |fib|
  fib < 10
end



puts "twice fibs is #{twice_fibs}"
puts "fibs filtered is #{fibs_filtered}"

puts "filtered is #{filtered}"



#sum

sum=0
fibs.each { |fib| sum+= fib}
puts "The sum of the fibs is  #{sum}"

#odd elements

odd_fibs = fibs.select do |fib|
  fib.odd?
end

puts "The odd fibs are #{odd_fibs}"


odd_sum=0
#sum of the odd fibs
odd_fibs = fibs.select do |fib|
  fib.odd?
end.each { |fib| odd_sum+= fib}

puts  "The sum of the odd fibs are #{odd_sum}"

#even fibs product


even_product = 0
fib_evens = fibs.select do |fib|
  fib.even?
end.drop(1).each { |fib| even_product*= fib}

puts "The even fibs are #{fib_evens}"
