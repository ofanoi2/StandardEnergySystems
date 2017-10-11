# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Workday.destroy_all
Building.destroy_all

User.create! [	
  { name: "Oluseye Fanoiki", email: "oluseye@standardenergysystems.com", password: "abc1234#", user_role: "1" },
  { name: "Jon Doe", email: "jon@standardenergysystems.com", password: "1234abc#", user_role: "0" }
]

Workday.create! [
  { title: "Workday 1", workday_type: "Suburb"},	
  { title: "Workday 2", workday_type: "Suburb"},
  { title: "Workday 4", workday_type: "Suburb"},
  { title: "Workday 5", workday_type: "Suburb"},
  { title: "Workday 6", workday_type: "Suburb"},
  { title: "Workday 7", workday_type: "Suburb"},
  { title: "Workday 8", workday_type: "Suburb"},
  { title: "Workday 9", workday_type: "Suburb"},
  { title: "Workday 10", workday_type: "Suburb"},
  { title: "Workday 12", workday_type: "Suburb"},
  { title: "Workday 13", workday_type: "Suburb"},
  { title: "Workday 14", workday_type: "Suburb"},
  { title: "Workday 15", workday_type: "Suburb"},
  { title: "Workday 16", workday_type: "Suburb"},
  { title: "Workday 17", workday_type: "Suburb"},
  { title: "Workday 18", workday_type: "Suburb"},  
  { title: "Workday 21", workday_type: "Suburb"},
  { title: "Workday 22", workday_type: "Suburb"},	
  { title: "Workday 1", workday_type: "Downtown"},	
  { title: "Workday 2", workday_type: "Downtown"},
  { title: "Workday 3", workday_type: "Downtown"},
  { title: "Workday 5", workday_type: "Downtown"},
  { title: "Workday 6", workday_type: "Downtown"},
  { title: "Workday 7", workday_type: "Downtown"},
  { title: "Workday 8", workday_type: "Downtown"},
  { title: "Workday 9", workday_type: "Downtown"},
  { title: "Workday 10", workday_type: "Downtown"},
  { title: "Workday 12", workday_type: "Downtown"},
  { title: "Workday 13", workday_type: "Downtown"},
  { title: "Workday 14", workday_type: "Downtown"},
  { title: "Workday 15", workday_type: "Downtown"},
  { title: "Workday 16", workday_type: "Downtown"},
  { title: "Workday 17", workday_type: "Downtown"},
  { title: "Workday 21", workday_type: "Downtown"},
  { title: "Workday 22", workday_type: "Downtown"}

]

w1s = Workday.find_by(title: "Workday 1", workday_type: "Suburb")
w1s.buildings.create! [
   { building_number: "05551" , building_name: "Complete Obedience Dog Training", building_address: "5551 State Road, Parma OH 44134", active_yn: "1"},
   { building_number: "08151" , building_name: "Crown Center", building_address: "5005 Rockside Road, Independence OH 44131", active_yn: "1"},
   { building_number: "11001" , building_name: "Realty One", building_address: "34125 Solon Road, Solon OH 44139", active_yn: "1"},
   { building_number: "11003" , building_name: "6200 building", building_address: "6200 Enterprise Pkwy, Solon OH 44139", active_yn: "1"}
]










