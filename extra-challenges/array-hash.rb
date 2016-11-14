# # Arrays & Hashes

# ## Arrays

# ### Step 1

# - Create a method that takes an array of numbers as parameter.
# - Return a new array that returns only even values.
# - Call the method with an array of 10 elements and store the result in a variable.

array = [1,2,3,4,5,6,7,8,9,10]

even_numbers = array.select { |num| num.even?}


# ### Step 2

# - Given this array, access to the fourth element of the array.

even_numbers[3]

# ### Step 3

# - Given this array, update the second element by setting its value to 11.

array[1] = 11

# ## Hashes

# ### Step 1

# - Create a hash with 3 couples of key/value: day (eg. monday), temperature, sky (eg. cloudy, sunny) and store it in a variable.
# - Update the sky value with a new value.
# - Add a new entry in the hash for the city (eg. Amsterdam).
city_weather = {
  [
  {
    "day": Friday
    "temperature": 10
    "sky": gray
}
]
}

city_weather[0][2] = cloudy
city_weather[:city] = Amsterdam

p city_weather


# ### Step 2 (Array and Hashes)

# - Create an array containing a list of weather informations for different cites (use the same hash details)
# (eg. an array of hash for Amsterdam, Brussels, etc) and of course, store it in a variable

# ### Step 3

# - Create a method that take the previous array as parameter.
# - Return the average temperature.
