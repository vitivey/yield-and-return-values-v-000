require 'pry'

def hello(array)
  i = 0
  while i < array.length
    binding.pry
    yield(array[i])
    i += 1
  end
  new_array
end

new_array=[]
hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }

hello(["Tim", "Tom", "Jim"]) do |name| 
  new_array << "Hi, #{name}" 
  new_array
end
array