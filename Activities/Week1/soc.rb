def sum_cubes(number)
  if number ==1
    return 1
  end
  cubednumber = number**3
  #arrayofcubes << cubednumber
  return sum_cubes(number-1) + cubednumber

end

puts sum_cubes(3)


# sc3 = sum_cubes(1) + sum_cubes(2) +sum_cubes(3)
# sc4 =  sc3 + sum_cubes(4)
# sc5 = sc4 + 5**3

# scn = scn -1 + n**3


#puts arrayofcubes

#a = []
#a << 2
#puts a

#def store_sum_cubes(number)
#arrayofcubes =  [27]
 # return arrayofcubes
#end

#puts sum_cubes(3)

#puts arrayofcubes


