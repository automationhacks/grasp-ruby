# NoMethodError 
begin
    nil.xyz 
rescue Exception => ex
    puts ex
    puts ex.class
end

puts nil.nil? # true
puts nil.to_s # ""
puts nil.inspect # "nil"