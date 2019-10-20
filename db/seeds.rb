# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create({name: "Grignak", age: 25, password: "tesTing123", password_confirmation: "tesTing123", bio: "I live for sorcery", favorite_activity: "running"})
User.create({name: "User 2", age: 32, password: "$tink33", password_confirmation: "$tink33", bio: "Spooktacular!", favorite_activity: "Cycling"})

Calendar.create({appointment_id: 1, user_id: 1, workout_id: 1})
Workout.create({name: "Morning Run", workout_type: "run", duration: 15, starts_at: nil, ends_at: nil, user_id: 1})
Appointment.create({user_id: 1, name: "Workin' 9-5", appt_type: "Work", start_time: "9:00 AM", end_time: "5:00 PM", day: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"], location: "233 S Wacker Ave", date: nil})
