# !/usr/bin/env ruby
# Lets create a greeter which is able to greet either a single person or
# multiples (aka a List)

class MegaGreeter
    attr_accessor :names

    def initialize(names = "World")
        @names = names
    end

    def say_hi
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("each")
            # iterate over the list
            @names.each do |name|
                puts "Hello #{name}!"
            end
        else
            puts "Hello #{@names}"
        end
    end

    def say_bye
        if @names.nil?
            puts "..."
        # Join names with commas
        elsif @names.respond_to?("join")
            puts "Goodbye #{@names.join(", ")}. Come back soon!"
        else
            puts "Goodbye #{@names}. Come back soon"
        end
    end
end


if __FILE__ == $0
    mg = MegaGreeter.new
    mg.say_hi
    mg.say_bye

    mg.names = "Zeke"
    mg.say_hi
    mg.say_bye

    mg.names = ["Gaurav", "Paul", "John"]
    mg.say_hi
    mg.say_bye

    mg.names = nil
    mg.say_hi
    mg.say_bye
end
