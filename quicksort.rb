def quicksort(array)
  return array if array.length <= 1
  pivot = array.sample
  quicksort(array.select { |n| n < pivot }) +
  array.select { |n| n == pivot } +
  quicksort(array.select { |n| n > pivot })
end

#-----DRIVERS-----
arr = (1..100).to_a.shuffle
p (quicksort(arr) == arr.sort)