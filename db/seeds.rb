# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


1.upto(25) do |i|
   countries = ["Colombia", "Puerto Rico"]
   country = i.even? ? countries[0] : countries[1]
   User.create(:name => "User #{i}", :email => "usuario_#{i}@gmail.com", :country => country)
end

User.all.each do |x|
	1.upto(5) do |i|
		Rating.create(:value => rand(5), :user => x)
		Skill.create(:name => "Carpinteria", :description => "Experiencia trabajanod con Madera", :user => x)
	end
end