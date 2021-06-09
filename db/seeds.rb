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

user = User.new(full_name: "Molly", email: "molly@nasa.us", password: "123456", age: "24", gender: "female", skin_color: "asian", skin_type: "combination")
user.save!

treatment = Treatment.new(user_id: user.id, skin_condition: 'eczema', start_date: '31.05.2021', end_date: '30.06.2021', status: 'start')
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

#_________________________ Progress trackers

tracker = Tracker.new(category_id: Category.fourth.id, treatment_id: treatment.id, rating: '1', notes: 'really bad eczema in my knees', created_at: "2021-05-31")
tracker.photo.attach(io: file, filename: 'Eczema Knees Day 00.png', content_type: 'image/png')
tracker.save!

tracker = Tracker.new(category_id: Category.fourth.id, treatment_id: treatment.id, rating: '2', notes: 'Hmm still bad, but maybe a little progress', created_at: "2021-06-01")
tracker.photo.attach(io: file, filename: 'Eczema Knees Day 11.png', content_type: 'image/png')
tracker.save!

tracker = Tracker.new(category_id: Category.fourth.id, treatment_id: treatment.id, rating: '4', notes: 'Feeling some progress', created_at: "2021-06-02")
tracker.photo.attach(io: file, filename: 'Eczema Knees Day 22.png', content_type: 'image/png')
tracker.save!

tracker = Tracker.new(category_id: Category.fourth.id, treatment_id: treatment.id, rating: '3', notes: 'Not sure, stable', created_at: "2021-06-03")
tracker.photo.attach(io: file, filename: 'Eczema Knees Day 33.png', content_type: 'image/png')
tracker.save!

tracker = Tracker.new(category_id: Category.fourth.id, treatment_id: treatment.id, rating: '5', notes: 'Feeling some progress', created_at: "2021-06-04")
tracker.photo.attach(io: file, filename: 'Eczema Knees Day 44.png', content_type: 'image/png')
tracker.save!

tracker = Tracker.new(category_id: Category.fourth.id, treatment_id: treatment.id, rating: '8', notes: 'Progress feeling confident :)', created_at: "2021-06-05")
tracker.photo.attach(io: file, filename: 'Eczema Knees Day 55.png', content_type: 'image/png')
tracker.save!

tracker = Tracker.new(category_id: Category.fourth.id, treatment_id: treatment.id, rating: '3', notes: 'Omg its back... :(', created_at: "2021-06-09")
tracker.photo.attach(io: file, filename: 'Eczema Knees Day 5_33_relapse.png', content_type: 'image/png')
tracker.save!

tracker = Tracker.new(category_id: Category.fourth.id, treatment_id: treatment.id, rating: '7', notes: 'Progress again', created_at: "2021-06-10")
tracker.photo.attach(io: file, filename: 'Eczema Knees Day 66.png', content_type: 'image/png')
tracker.save!

tracker = Tracker.new(category_id: Category.fourth.id, treatment_id: treatment.id, rating: '9', notes: 'Progress and feeling stable if I pay attention to lifestyle :)', created_at: "2021-06-11")
tracker.photo.attach(io: file, filename: 'Eczema Knees Day 77.png', content_type: 'image/png')
tracker.save!

#_________________________ Sun trackers

tracker = Tracker.new(category_id: Category.fifth.id, treatment_id: treatment.id, rating: '7', notes: 'Not much sun exposure', created_at: "2021-05-31")
tracker.save!

tracker = Tracker.new(category_id: Category.fifth.id, treatment_id: treatment.id, rating: '6', notes: 'Some sun exposure', created_at: "2021-06-01")
tracker.save!

tracker = Tracker.new(category_id: Category.fifth.id, treatment_id: treatment.id, rating: '8', notes: 'Not much sun exposure', created_at: "2021-06-02")
tracker.save!

tracker = Tracker.new(category_id: Category.fifth.id, treatment_id: treatment.id, rating: '8', notes: 'Not much sun exposure', created_at: "2021-06-03")
tracker.save!

tracker = Tracker.new(category_id: Category.fifth.id, treatment_id: treatment.id, rating: '8', notes: 'Not much sun exposure', created_at: "2021-06-04")
tracker.save!

tracker = Tracker.new(category_id: Category.fifth.id, treatment_id: treatment.id, rating: '8', notes: 'Not much sun exposure', created_at: "2021-06-05")
tracker.save!

tracker = Tracker.new(category_id: Category.fifth.id, treatment_id: treatment.id, rating: '3', notes: 'Got quite some sun the last days :(', created_at: "2021-06-09")
tracker.save!

tracker = Tracker.new(category_id: Category.fifth.id, treatment_id: treatment.id, rating: '8', notes: 'Not much sun exposure', created_at: "2021-06-10")
tracker.save!

tracker = Tracker.new(category_id: Category.fifth.id, treatment_id: treatment.id, rating: '9', notes: 'Not much sun exposure', created_at: "2021-06-11")
tracker.save!

#_________________________ Sleep trackers

tracker = Tracker.new(category_id: Category.find_by(title: 'sleep').id, treatment_id: treatment.id, rating: '7', notes: 'Good sleep', created_at: "2021-05-31")
tracker.save!

tracker = Tracker.new(category_id: Category.find_by(title: 'sleep').id, treatment_id: treatment.id, rating: '6', notes: 'Quite good sleep', created_at: "2021-06-01")
tracker.save!

tracker = Tracker.new(category_id: Category.find_by(title: 'sleep').id, treatment_id: treatment.id, rating: '8', notes: 'Good sleep', created_at: "2021-06-02")
tracker.save!

tracker = Tracker.new(category_id: Category.find_by(title: 'sleep').id, treatment_id: treatment.id, rating: '8', notes: 'Good sleep', created_at: "2021-06-03")
tracker.save!

tracker = Tracker.new(category_id: Category.find_by(title: 'sleep').id, treatment_id: treatment.id, rating: '8', notes: 'Good sleep', created_at: "2021-06-04")
tracker.save!

tracker = Tracker.new(category_id: Category.find_by(title: 'sleep').id, treatment_id: treatment.id, rating: '8', notes: 'Good sleep', created_at: "2021-06-05")
tracker.save!

tracker = Tracker.new(category_id: Category.find_by(title: 'sleep').id, treatment_id: treatment.id, rating: '3', notes: 'Soo bad, soooo tired, barely slept the last days :(', created_at: "2021-06-09")
tracker.save!

tracker = Tracker.new(category_id: Category.find_by(title: 'sleep').id, treatment_id: treatment.id, rating: '8', notes: 'Good sleep', created_at: "2021-06-10")
tracker.save!

tracker = Tracker.new(category_id: Category.find_by(title: 'sleep').id, treatment_id: treatment.id, rating: '9', notes: 'Very good sleep', created_at: "2021-06-11")
tracker.save!


puts 'Seeds created!'
