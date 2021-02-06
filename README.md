# Semantic
The easiest way to create semantic APIs in ruby

# How?

Just create your ruby files inside the api folder and the application's routes will match the folder structure

**Example:**
```bash
├── api
│   ├── users
│   │   └── phone-numbers.rb
│   └── users.rb
```

```ruby
# api/users.rb

get do
  users = [
    {id: 123, name: "Harry potter"},
    {id: 124, name: "Gugu liberato"},
    {id: 125, name: "Nicola Tesla"}
  ]

  users.to_json
end
```

**When you get**
```bash
curl http://localhost:4567/users

# Returns
[{"id":123,"name":"Harry potter"},{"id":124,"name":"Gugu liberato"},{"id":125,"name":"Nicola Tesla"}
```
