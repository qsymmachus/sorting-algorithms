def merge_sort(array)
  return array if array.length <= 1
  middle = array.length / 2
  left = merge_sort(array[0..middle-1])
  right = merge_sort(array[middle..-1]) 
  merge(left, right)
end

def merge(left, right)
  result = []
  until left.empty? || right.empty?
    smaller = (left.first <= right.first) ? left.shift : right.shift
    result << smaller
  end
  result + left + right
end

#-----DRIVERS-----
arr = [2, 5, 7, 3, 8, 6, 4, 1, 9]

puts (merge_sort(arr) == arr.sort)