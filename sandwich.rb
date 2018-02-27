module Sandwich
    module_function

def build(type: "jam", number_of_sandwiches: 2)
    array = []
    array << "open bread"
    array << "take #{number_of_sandwiches * 2} pieces of bread"
    array << "open jar of #{type}"
    array << "pick up knife by handle"
    array << "Stick knife in #{type} jar"
    array << "Smear bread"
    array << "Enjoy"
    array
end
end

Sandwich.build
    
