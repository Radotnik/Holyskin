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
require "open-uri"

puts "DB cleaned"
puts "Creating database..."

user = User.new(full_name: "Molly", email: "molly@nasa.us", password: "123456", age: "24", gender: "female", skin_color: "black", skin_type: "combination")
user.save!

treatment = Treatment.new(user_id: user.id, skin_condition: 'eczema', start_date: '01.06.2021', end_date: '31.12.2021', status: 'start')
treatment.save!

Category.new(group: 'skincare', title: 'medications').save!
Category.new(group: 'skincare', title: 'products').save!
Category.new(group: 'skincare', title: 'supplements').save!
Category.new(group: 'skincare', title: 'progress').save!

Category.new(group: 'environmental', title: 'sun').save!
Category.new(group: 'environmental', title: 'humidity').save!
Category.new(group: 'environmental', title: 'temperature').save!
Category.new(group: 'environmental', title: 'pollution').save!

Category.new(group: 'lifestyle', title: 'sleep').save!
Category.new(group: 'lifestyle', title: 'stress').save!
Category.new(group: 'lifestyle', title: 'workout').save!
Category.new(group: 'lifestyle', title: 'diet').save!


file = URI.open('https://images.unsplash.com/photo-1595514446083-236b9985a0e2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80')
tracker = Tracker.new(category_id: Category.first.id, treatment_id: treatment.id, rating: '3', notes: 'seeing progress')
tracker.photo.attach(io: file, filename: 'happy_skin.png', content_type: 'image/png')
tracker.save!


file = URI.open('https://images.unsplash.com/photo-1606501176727-e24f1e183fd6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1350&q=80')
tracker = Tracker.new(category_id: Category.fourth.id, treatment_id: treatment.id, rating: '2', notes: 'It looks like this today')
tracker.photo.attach(io: file, filename: 'eczema_skin1.png', content_type: 'image/png')
tracker.save!


file = URI.open('https://images.unsplash.com/photo-1606501176727-e24f1e183fd6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1350&q=80')
tracker = Tracker.new(category_id: Category.fourth.id, treatment_id: treatment.id, rating: '3', notes: 'I think there is a slight improvement')
tracker.photo.attach(io: file, filename: 'eczema_skin2.png', content_type: 'image/png')
tracker.save!


file = URI.open('https://images.unsplash.com/photo-1606501176727-e24f1e183fd6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1350&q=80')
tracker = Tracker.new(category_id: Category.fourth.id, treatment_id: treatment.id, rating: '3', notes: 'Feeling confident :)')
tracker.photo.attach(io: file, filename: 'eczema_skin1.png', content_type: 'image/png')
tracker.save!


puts 'Seeds created!'
