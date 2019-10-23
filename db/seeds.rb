# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
dt = DateTime.now
dt9am = DateTime.new(2019, 10, 23, 9, 00, 00, Rational(-5,24))
dt11am = DateTime.new(2019, 10, 23, 11, 00, 00, Rational(-5,24))
dt12pm = DateTime.new(2019, 10, 23, 12, 00, 00, Rational(-5,24))
dt5pm = DateTime.new(2019, 10, 23, 17, 00, 00, Rational(-5,24))
User.create({name: "Grignak", age: 25, email: "testing@test.com", password: "tesTing123", password_confirmation: "tesTing123", bio: "I live for sorcery", favorite_activity: "running"})
User.create({name: "User 2", age: 32, email: "testicus@testy.org", password: "$tink33", password_confirmation: "$tink33", bio: "Spooktacular!", favorite_activity: "Cycling"})

Event.create()
Calendar.create({appointment_id: 1, user_id: 1, workout_id: 1})
Workout.create({name: "Morning Run", workout_type: "run", duration: dt11am-dt9am, starts_at: dt9am, ends_at: dt11am, user_id: 1})
Appointment.create({user_id: 1, name: "Workin' 9-5", appt_type: "Work", start_time: dt12pm, end_time: dt5pm, day: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"], location: "233 S Wacker Ave", date: nil})
