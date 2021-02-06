get do
  users = [
    {id: 123, name: "Harry potter"},
    {id: 124, name: "Gugu liberato"},
    {id: 125, name: "Nicola Tesla"}
  ]

  users.to_json
end

get ':id' do
  users = [
    {id: 123, name: "super data"},
    {id: 124, name: "some data"},
    {id: 125, name: "test by id"}
  ]

  users.to_json
end
