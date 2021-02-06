get do
  phone_numbers = [
    {id: 123, number: "998123123"},
    {id: 124, number: "772342343"},
    {id: 125, number: "1323312312"}
  ]

  phone_numbers.to_json
end
