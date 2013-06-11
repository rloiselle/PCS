count = 20
10.times do
    count -= 1
    puts count
  end
puts "Lift off!!"

some_array = [z,a,q,d,e]

def sort some_array # This "wraps" recursive_sort.
recursive_sort some_array, []
end
def recursive_sort unsorted_array, sorted_array
# Your fabulous code goes here.
end


