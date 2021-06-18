puts "Clearing old data..."
Cohort.destroy_all
Student.destroy_all

# This will create 5 cohorts using a random date
puts "Seeding cohorts..."
c1 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 1).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c2 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 1).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c3 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 1).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c4 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 1).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c5 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 1).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)

puts "Seeding students..."

s1 = Student.create(name: "Jason", age: 24, email: "jason@yahoo.com", cohort_id: Cohort.ids.sample)
s2 = Student.create(name: "Nick", age: 27, email: "Nick@yahoo.com", cohort_id: Cohort.ids.sample)
s1 = Student.create(name: "Megan", age: 30, email: "Megan@yahoo.com", cohort_id: Cohort.ids.sample)
s1 = Student.create(name: "Joiquin", age: 21, email: "Joiquin@yahoo.com", cohort_id: Cohort.ids.sample)
s1 = Student.create(name: "Mo", age: 20, email: "Mo@yahoo.com", cohort_id: Cohort.ids.sample)
# TODO: create seed data for students
# check your schema and make sure to create students with all the necessary data

puts "Done!"