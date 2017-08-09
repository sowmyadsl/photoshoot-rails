# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


admin_list = [
  [ "admin@admin.com", "password"],
]

admin_list.each do |email, password|
  User.create( email: email, password: password, admin: true )
end

p "Created #{Service.count} services"
p "Created #{User.count} admin"
