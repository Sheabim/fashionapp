# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(email: 'guest@example.com', password: '12345678')
look = Look.create(user_id: user.id, name: 'default')

garment_types = [
 'Jacket',
  'Jacket', 
   'Jacket', 'Jacket', 'Jacket', 'Jacket', 'Jacket', 'Jacket', 'Jacket', 'Jacket', 'Jacket', 'Jacket'

]

garment_types.each do |garment_type| 
	GarmentType.create(name: garment_type)
end