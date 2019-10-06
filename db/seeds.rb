Tweet.destroy_all
Event.destroy_all
User.destroy_all

andrew = User.create!(
  email: "a@d.co",
  password: "password",
  password_confirmation: "password",
  first_name: "Andrew",
  last_name: "Woods",
  username: "woodsy88"
  )

puts "1 user created"

tweets = [
  ["Non deserunt eu irure veniam occaecat Lorem mollit officia aliqua proident do Lorem. Pariatur deserunt ad aliqua excepteur aliquip enim adipisicing. Nostrud veniam dolor quis nisi cillum deserunt consectetur culpa incididunt sunt velit do. Id est enim sit tempor sunt consectetur est sint.", andrew.id],
  ["Non deserunt eu irure veniam occaecat Lorem mollit officia aliqua proident do Lorem. Pariatur deserunt ad aliqua excepteur aliquip enim adipisicing. Nostrud veniam dolor quis nisi cillum deserunt consectetur culpa incididunt sunt velit do. Id est enim sit tempor sunt consectetur est sint.", andrew.id],
  ["Non deserunt eu irure veniam occaecat Lorem mollit officia aliqua proident do Lorem. Pariatur deserunt ad aliqua excepteur aliquip enim adipisicing. Nostrud veniam dolor quis nisi cillum deserunt consectetur culpa incididunt sunt velit do. Id est enim sit tempor sunt consectetur est sint.", andrew.id],
  ["Non deserunt eu irure veniam occaecat Lorem mollit officia aliqua proident do Lorem. Pariatur deserunt ad aliqua excepteur aliquip enim adipisicing. Nostrud veniam dolor quis nisi cillum deserunt consectetur culpa incididunt sunt velit do. Id est enim sit tempor sunt consectetur est sint.", andrew.id],
  ["Non deserunt eu irure veniam occaecat Lorem mollit officia aliqua proident do Lorem. Pariatur deserunt ad aliqua excepteur aliquip enim adipisicing. Nostrud veniam dolor quis nisi cillum deserunt consectetur culpa incididunt sunt velit do. Id est enim sit tempor sunt consectetur est sint.", andrew.id],
]


tweets.each do |body, user_id|
  Tweet.create!(body: body, user_id: user_id)
end

