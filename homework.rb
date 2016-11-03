# # # Homework

# # ### A. Given the following data structure:

# ```
lines = ['Gyle Centre', 'Edinburgh Park', 'Murrayfield Stadium', 'Haymarket', 'Princes Street']
# # ```

# 1. Work out how many stops there are in the lines array
puts "---Q1---"
puts lines.length


# 2. Return 'Edinburgh Park' from the array
puts "---Q2---"
puts lines[1]


# 3. How many ways can we return 'Princes Street' from the array?
puts "---Q3---"
puts lines[4]
puts lines[-1]
puts lines.last


# 4. Work out the index position of 'Haymarket'
puts "---Q4---"
puts lines.index ("Haymarket")


# 5. Add 'Airport' to the start of the array
puts "---Q5---" 
puts lines.unshift "Airport"
# lines.insert(0, "Airport")


# 6. Add 'York Place' to the end of the array
puts "---Q6---"
puts lines << "York Place"
#lines.push("York Place")
#lines.insert(-1, "York Place")


#7. Remove 'Edinburgh Park' from the array using it's name 
puts "---Q7---"
lines.delete ("Edinburgh Park")
puts lines


#8. Delete 'Edinburgh Park' from the array by index
puts "---Q8---"
lines.delete lines[1]
puts lines


# 9. Reverse the positions of the stops in the array
puts "---Q9---"
puts lines.reverse



# # 10. Print out all of the stops using a for loop and a while loop
puts "---Q10a---"
for stops in lines
  puts stops
end

puts "---Q10b---"
counter = 0
while counter<=lines.length
  puts lines [counter]
  counter+=1
end



# ### B. Given the following data structure:

#```
  my_hash = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}
# ```

# 1. How would you return the string `"One"`?
puts my_hash [1]


# 2. How would you return the string `"Two"`?
puts my_hash [:two]


# 3. How would you return the number `2`?
puts my_hash ["two"]


# 4. How would you add `{3 => "Three"}` to the hash? 
my_hash[3]="Three"
puts my_hash


# 5. How would you add `{:four => 4}` to the hash? 
my_hash[:four] = 4
puts my_hash

# ### C. Given the following data structure:

# ```
  users = {
    "Jonathan" => {
      :twitter => "jonnyt",
      :favourite_numbers => [12, 42, 75, 12, 5],
      :home_town => "Stirling",
      :pets => {
        :fluffy => "cat",
        :fido => "dog",
        :spike => "dog"
      }
    },
    "Erik" => {
      :twitter => "eriksf",
      :favourite_numbers => [8, 12, 24],
      :home_town => "Linithgow",
      :pets => {
        :nemo => "fish",
        :kevin => "fish",
        :rover => "dog",
        :rupert => "parrot"
      }
    },
    "Avril" => {
      :twitter => "bridgpally",
      :favourite_numbers => [12, 14, 85, 88],
      :home_town => "Dunbar",
      :pets => {
        :sssteven => "snake"
      }
    },
  }
#```

# 1. Return Jonathan's Twitter handle (i.e. the string `"jonnyt"`)
puts users ["Jonathan"][:twitter]

# 2. Return Erik's hometown 
puts users ["Erik"][:home_town]

# 3. Return the array of Erik's favorite numbers
puts users ["Erik"][:favourite_numbers]

# 4. Return the type of Avril's pet Colin
# Avril doesn't seem to have a pet called Colin. Instead I'll call the pet type of sssteven.

puts users ["Avril"][:pets][:sssteven]

# 5. Return the smallest of Erik's favorite numbers
puts users ["Erik"][:favourite_numbers].min

# 6. Return an array of Avril's favorite numbers that are even 
even_numbers = users["Avril"][:favourite_numbers]
for number in even_numbers
  puts number if number%2 ==0
end

result = []
for number in users ["Avril"][:favourite_numbers]
  result << number if number.even?
end

# 7. Return an array of Jonathans favourite numbers, sorted in ascending order and excluding duplicates
puts users ["Jonathan"][:favourite_numbers].uniq.sort!


# 8. Add the number `7` to Erik's favorite numbers
puts users ["Erik"][:favourite_numbers]<<7

# 9. Change Erik's hometown to Edinburgh
users ["Erik"][:home_town]="Edinburgh"



# 10. Add a pet dog to Erik called "Fluffy"
users ["Erik"][:pets][:fluffy] = "dog"


# 11. Add yourself to the users hash
me = {
  :twitter => "winster",
  :favourite_numbers => [1, 4, 8, 80],
  :home_town => "Edinburgh",
  :pets => {
    :Ryu => "fish"
  }
}
users ["Winnie"] = me

puts users