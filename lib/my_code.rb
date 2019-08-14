# MY CODE...which didn't pass. Difference is my inclusion of do...end. Solution code did not include that part.

# def my_own_map(source_array)
#     new_array = []
#     i = 0
#     while source_array.length > 1 do
# new_array.push( yield(source_array[i] ))
# i += 1
# end
# return new_array
# end


def map(source_array)
  new_array = []
  i = 0
  while i < source_array.length
    new_array.push(yield(source_array[i]))
    i += 1
  end
  new_array
end


# SOLUTION CODE FOR REDUCE
def reduce(s, sp=nil)
  if sp
    accum = sp
    i = 0
  else
    accum = s[0]
    i = 1
  end
  while i < s.length
    accum = yield(accum, s[i])
    i += 1
  end
  accum
end


#
# def reduce_to_total(source_array, starting_point = 0)
#   i = 0
# while source_array.length > i do
#   starting_point += source_array[i]
#   i+=1
# end
# return starting_point
# end
#
#
# def reduce_to_all_true(source_array)
# i = 0
# while source_array.length > i do
# return false if !source_array[i]
# i += 1
# end
# return true
# end
#
# def reduce_to_any_true(source_array)
#   i = 0
#   while source_array.length > i do
#     return true if source_array[i]
#     i += 1
#   end
#   return false
# end
