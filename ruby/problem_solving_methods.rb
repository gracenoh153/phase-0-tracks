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
