Tweet.destroy_all
Event.destroy_all
User.destroy_all

users = [
  ["test1@test.com", "password", "password", "andy", "woodssddds", "gfdwoodsy88"],
  ["test2@test.com", "password", "password", "ronss", "wodddods", "gdfwoodsy88"],
  ["test3@test.com", "password", "password", "jon", "wooffds", "gdfwoodsy88"],
  ["test4@test.com", "password", "password", "to", "ffs", "dgfwoodsy88"],
  ["test5@test.com", "password", "password", "andy", "wosddssdods", "gdfwoodsy88"],
  ["test6@test.com", "password", "password", "andsdy", "wcxoods", "bdgfwoodsy88"],
  ["test7@test.com", "password", "password", "anxzdy", "wovcods", "dfbwoodsy88"],
  ["test8@test.com", "password", "password", "anbvdy", "woods", "uytwoodsy88"],
  ["test9@test.com", "password", "password", "andnby", "womnods", "gfswoodsy88"],
  ["test10@test.com", "password", "password", "andmnnmy", "wbccvoods", "ADwoodsy88"],
  ["test11@test.com", "password", "password", "aqandy", "woSADods", "sawoodsy88"],
  ["test12@test.com", "password", "password", "aDSAdy", "woFDSods", "ljkwoodsy88"],
  ["test13@test.com", "password", "password", "anfdbdy", "fgdwoods", "khwoodsy88"],
  ["test14@test.com", "password", "password", "anfgddy", "woofgdds", "jkgwoodsy88"],
  ["test15@test.com", "password", "password", "afgdndy", "wogfdods", "gfdwoodsy88"],
]

users.each do |email, password, password_confirmation, first_name, last_name, username|
 User.create!(
  email: email,
  password: password,
  password_confirmation: password_confirmation,
  first_name: first_name,
  last_name: last_name,
  username: username
  )
end

puts "#{users.count} users created"


tweets = [
  ["Non deserunt eu irure veniam occaecat Lorem mollit officia aliqua proident do Lorem. Pariatur deserunt ad aliqua excepteur aliquip enim adipisicing. Nostrud veniam dolor quis nisi cillum deserunt consectetur culpa incididunt sunt velit do. Id est enim sit tempor sunt consectetur est sint.", User.first.id],
  ["Non deserunt eu irure veniam occaecat Lorem mollit officia aliqua proident do Lorem. Pariatur deserunt ad aliqua excepteur aliquip enim adipisicing. Nostrud veniam dolor quis nisi cillum deserunt consectetur culpa incididunt sunt velit do. Id est enim sit tempor sunt consectetur est sint.", User.second.id],
  ["Non deserunt eu irure veniam occaecat Lorem mollit officia aliqua proident do Lorem. Pariatur deserunt ad aliqua excepteur aliquip enim adipisicing. Nostrud veniam dolor quis nisi cillum deserunt consectetur culpa incididunt sunt velit do. Id est enim sit tempor sunt consectetur est sint.", User.third.id],
  ["Non deserunt eu irure veniam occaecat Lorem mollit officia aliqua proident do Lorem. Pariatur deserunt ad aliqua excepteur aliquip enim adipisicing. Nostrud veniam dolor quis nisi cillum deserunt consectetur culpa incididunt sunt velit do. Id est enim sit tempor sunt consectetur est sint.", User.fourth.id],
  ["Non deserunt eu irure veniam occaecat Lorem mollit officia aliqua proident do Lorem. Pariatur deserunt ad aliqua excepteur aliquip enim adipisicing. Nostrud veniam dolor quis nisi cillum deserunt consectetur culpa incididunt sunt velit do. Id est enim sit tempor sunt consectetur est sint.", User.fifth.id],
]


tweets.each do |body, user_id|
  Tweet.create!(body: body, user_id: user_id)
end

puts "5 tweets created"

follows = [
  [User.first, User.last],
  [User.second, User.third],
  [User.fourth, User.fifth],
]

follows.each do |follower_id, followed_user|

Follow.create!(follower_id: follower_id, followed_user: followed_user)
end
