# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

classA = SchoolClass.create(title: 'A', room_number: 1)
classB = SchoolClass.create(title: 'B', room_number: 2)

mike = Student.create(first_name: 'Mike', last_name: 'Byo')
hanna = Student.create(first_name: 'Hanna', last_name: 'Kio')
