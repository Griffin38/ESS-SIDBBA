# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
    user1 = User.where(name: Faker::Internet.user_name,pwd:"1234",estado:true).create
    user1 = User.where(name: Faker::Internet.user_name,pwd:"1234",estado:true).create
    post = user1.posts.create(
        Sensor: "Temperatura",
        Value: "12",
        Latitude: "2",
        Longitude: "3",
        Date: "23-03-2016",
        Time: "23:32")
end