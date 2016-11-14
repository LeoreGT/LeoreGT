def answer(first_number, operator, second_number)
  return first_number.to_i + second_number.to_i if operator == "+"
  return first_number.to_i - second_number.to_i if operator == "-"
  return first_number.to_i * second_number.to_i if operator == "*"
  return first_number.to_i / second_number.to_i if operator == "/"
end
