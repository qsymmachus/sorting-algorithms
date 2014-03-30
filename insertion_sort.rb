# Insertion sort is not as efficient with large lists as more advanced algorithms 
# like merge sort or quicksort. Insertion sorts average case performance is O(n^2). 
# However, it does have advantages. Insertion sort is typically:
# - Efficient with lists that are already mostly sorted ("adaptive")
# – Makes efficient use of memory since it is performed in-place.

def insertion_sort(array)
  array.length.times do |i|
    j = i - 1
    while j >= 0 && array[j] > array[i]
      array[j + 1] = array[j]
      j -= 1
    end
    array[j + 1] = array[i]
  end
  array
end

#-----DRIVERS-----
arr = (1..100).to_a.shuffle
p insertion_sort(arr) == arr.sort