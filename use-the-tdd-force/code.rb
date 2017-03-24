# YOUR CODE HERE
def plus_two(number)
  number += 2
end

def subtract_or_multiply_by_two(number)
  if number < 0
    number -= 2
  else
    number *= 2
  end
end

def repeat_last_word(sentence)
  last_word = sentence.split(" ")[-1].to_s
  result = sentence +" " + last_word
end

def return_value_of_type(input)
  type = input.class
    if input == :string
      result = input.to_s
    elsif input == :fixnum
      result = 4
    else
      result = "input does not match any Ruby class"
    end
end

def add_five_and_ten(input)
  input << 5
  input << 10
  input
end
