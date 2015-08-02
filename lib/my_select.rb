require 'pry'
def my_select(collection)
  puts "This block should not run!" if collection.empty?
  new_collection = []
  counter = 0
  while collection.size > counter
    # if the code block is true for such index, then push that element into new_collection
   # we don't need to write the block, code block is given in spec
    new_collection.push(collection[counter] ) if yield collection[counter]
    counter += 1
    # binding.pry
  end
  new_collection
end 

# my_select([1, 2, 3, 4, 5] )