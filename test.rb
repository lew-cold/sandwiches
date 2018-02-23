require_relative 'make-sandwich'
require 'colorize'
def expect actual, message, expected
    if actual == expected then
        puts "pass #{message}".colorize(:green)
    else
        puts "fail #{message} expected #{expected}, but got #{actual}".colorize(:red)
    end
end

def subject subject_name
    puts subject_name
end


def test_for_cheese_sandwich
    subject "cheese sandwich"
    sandwich = make_sandwich type: 'cheese', number_of_sandwiches: 2
    number_of_step = sandwich.length
    expect number_of_step, "number of steps", 10
    step_2 = sandwich[1]
    expect step_2, "step 2", "take 4 pieces of bread"
end

def test_for_beef_sandwich
    subject "beef sandwich"
    sandwich = make_sandwich type: 'beef', number_of_sandwiches: 1
    number_of_step = sandwich.length
    expect number_of_step, "number of steps", 10
    step_2 = sandwich[1]
    expect step_2, "step 2", "take 2 pieces of bread"
end
puts test_for_cheese_sandwich
puts test_for_beef_sandwich
