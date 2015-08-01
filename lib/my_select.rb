def my_select(collection)
  puts "This block should not run!" if collection.size == []
  if collection != 0
    collection.find_all { |e| e.even? }  
  end
end