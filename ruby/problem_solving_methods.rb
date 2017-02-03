=begin 
array = [15, 27, 31, 7, 80]
def search_array(array, integer)
  index = 0
  search_result = nil
  array.each do |x|
    if x == integer
      search_result = nil
      # break
    end
  index += 1 
  end
  return search_result 
end

p search_array(array, 7)
p search_array(array, 2)
p search_array(array, 31)
p search_array(array, 20)

=end 


def fib(num)
  fib_num = [0, 1]
    while fib_num.length < num
      fib_num << (fib_num[-2] + fib_num[-1])
    end
  return fib_num 
end 

p fib(6)
p fib(100)





