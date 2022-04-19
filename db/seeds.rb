puts "cleaning DBs"

Project.destroy_all
User.destroy_all

puts "DBs destroyed for good"

puts "creating the one and only user"

gala = User.create!(
  username: 'enqio',
  description: 'this is me',
  name: 'gala'
)

puts "User loaded inside the matrix"

puts "creating projects..."

woolks = Project.create!(
  title: 'Woolks',
  description: 'Team Project
                Mobile web app to walk your dog
                Coded in 10 days',
  user: gala
)



pig_rent = Project.create!(
  title: 'Pig Rent',
  description: 'Team Project
                Airbnb clone to rent pigs
                Coded in 4 days',
  user: gala
)


puts "Projects are here !!"
