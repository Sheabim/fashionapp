# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
user = User.create(email: 'guest@example.com', password: '12345678')
look = Look.create(user_id: user.id, name: 'default')

garment_types = [
 'Bags',
  'Belts', 
   'Bracelets & Bangles', 'Cradigan & umpers', 'Dresses & Jumpsuit', 'Earrings', 'Hats', 'Headbands', 'Jackets & coats', 'Leggins & Tights', 'Necklaces', 'Rings'

, 'Scarfs', 'Shoes', 'Skirts', 'Trousers & Jeans', 'Vest'
]


garment_types.each do |garment_type| 
	GarmentType.create(name: garment_type)
end