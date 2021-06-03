# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Cleaning database...'
Category.destroy_all
Tracker.destroy_all
Treatment.destroy_all
User.destroy_all

puts "DB cleaned"
puts "Creating database..."

user = User.new(full_name: "Molly", email: "molly@nasa.us", password: "123456", age: "24", gender: "female", skin_color: "black", skin_type: "combination")
user.save!

treatment = Treatment.new(user_id: user.id, skin_condition: 'eczema', start_date: '01.06.2021', end_date: '31.12.2021', status: 'start')
treatment.save!

# titles = ['sleep', 'stress', 'workout', 'diet', 'sun', 'humidity', 'temperature', 'pollution', 'medication', 'products', 'supplements', 'treatments']
# groups = ['skincare', 'environmental', 'lifestyle']

# category = {
#   skincare: ['medications', 'products', 'supplements', 'treatments']
#   environmental: ['sun', 'humidity', 'temperature', 'pollution']
#   lifestyle: ['sleep', 'stress', 'workout', 'diet']
# }

# Category.create!(group: 'skincare', title: 'medications')
Category.new(group: 'skincare', title: 'medications').save!
Category.new(group: 'skincare', title: 'products').save!
Category.new(group: 'skincare', title: 'supplements').save!
Category.new(group: 'skincare', title: 'treatments').save!

Category.new(group: 'environmental', title: 'sun').save!
Category.new(group: 'environmental', title: 'humidity').save!
Category.new(group: 'environmental', title: 'temperature').save!
Category.new(group: 'environmental', title: 'pollution').save!

Category.new(group: 'lifestyle', title: 'sleep').save!
Category.new(group: 'lifestyle', title: 'stress').save!
Category.new(group: 'lifestyle', title: 'workout').save!
Category.new(group: 'lifestyle', title: 'diet').save!

# category.each_with_index do |(key, value), index|
#   title: value
#   group: key
# end


# 4.times do
#   category = Category.new(
#     title: titles.sample,
#     group: skincare
#     )
#   category.save!
# end

tracker = Tracker.new(category_id: Category.first.id, treatment_id: treatment.id, rating: '3', notes: 'seeing progress')
  # , photo: 'https://images.unsplash.com/photo-1595514446083-236b9985a0e2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80')
tracker.save!

puts 'Seeds created!'
