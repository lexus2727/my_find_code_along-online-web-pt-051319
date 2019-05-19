require 'pry'

def my_find(collection)
#create counter
i = 0


#create while iterator
#.length allows us to iterate through entire array
while i < collection.length


#yield the collection
#if block returns true 
  if yield(collection[i])
#binding.pry
#return the argument we passed into yield (the element in the array that evaluated true)
  return collection[i]
  
#This will exit the loop and the element will be the return value of the method
end

#increment the counter
  i += 1
 end
end
collection = (1..100).to_a
my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 } 