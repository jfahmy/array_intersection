# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)
  if array1 == nil || array2 == nil
    return []
  end

  i = 0
  while i < array1.length
    k = 0
    match = false
    while k < array2.length && match == false
      if array1[i] == array2[k]
         match = true
      end
      k += 1
    end

    if match != true
      array1.delete_at(i)
    else
      i += 1
    end

  end

  array1
end


# Loop through each element in array1 and compare each of them to each element
# in array 2. This means having a nested while loop to go through each element in array 2.
# If no match is found between the array1 element and all of the array 2 elements then the element
# should be deleted from the array. If the element is kept then it should be sorted against all of
# the preceding kept elements.
