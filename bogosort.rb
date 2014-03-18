# Bogosort is a classic example of a bad sort: it has an average performance of O(n*n!).

def bogosort(array)
  return array if sorted?(array)
  bogosort(array.shuffle)
end

def sorted?(array)
  array == array.sort
end

#-----DRIVERS-----
arr = (1..100).to_a.shuffle
# Don't expect this to pass
p (bogosort(arr) == arr.sort) 