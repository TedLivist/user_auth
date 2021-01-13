users = [
  { username: "teddy", password: "password1"},
  { username: "jane", password: "password2" },
  { username: "daniel", password: "password3" },
  { username: "rayner", password: "password4"}
]

puts "Welcome to the authenticator"
50.times { print "-" }
puts ""
tracker = 0
while tracker < 3
  puts "Please enter your username"
  user_name = gets.chomp
  puts "Please enter your password"
  pass_word = gets.chomp

  correct = []
  users.each do |item|
    if (item[:username] == user_name and item[:password] == pass_word)
      correct.append(item)
      puts correct
    end
  end
  if !(correct.empty?) then
    break
  else
    puts "Incorrect credentials"
  end
  tracker += 1
end