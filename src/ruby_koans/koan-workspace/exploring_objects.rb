# Everything is an object
puts 1.is_a?(Object)
puts 1.5.is_a?(Object)
puts "string".is_a?(Object)
puts nil.is_a?(Object)
puts Object.is_a?(Object)

# We can convert objects to string using to_s func
puts 123.to_s
puts nil.to_s

# We can inspect objects
puts "=" * 10
puts 123.inspect
puts nil.inspect

# Creating object and seeing every object has an id
obj = Object.new
id_1 = obj.object_id

another_obj = Object.new
id_2 = another_obj.object_id

puts id_1, id_2

puts "=" * 10
puts 0.object_id
puts 1.object_id
puts 2.object_id
puts 100.object_id

puts "=" * 10
obj1 = Object.new
obj2 = obj1.clone
p obj1 != obj2
p obj1.object_id != obj2.object_id