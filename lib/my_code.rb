
def map(source_array)
  new_array = []
  i = 0
  while i < source_array.length
    new_array.push(yield(source_array[i]))
    i += 1
  end
  new_array
end


def reduce(source_array, starting_point=nil)
  if starting_point
    i = 0
  else
    starting_point = source_array[0]
    i = 1
  end
  while i < source_array.length
    starting_point = yield(starting_point, source_array[i])
    i += 1
  end
  starting_point
end
