# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

cows = [ 
{
    name: "Ottis", 
    breed: "Belgian Blue",
    age: 12,
    hobby: "Lift weights",
    image: "https://livestockmiddleeast.com/wp-content/uploads/2019/06/KUBITUS-DE-BRAY-455716400-6047-e1561536471567.jpg"
},
{   
    name: "Lulu", 
    breed: "Red Angus",
    age: 10,
    hobby: "Runaway during sunset",
    image: "https://images.unsplash.com/photo-1675478629496-aa9f7a99093a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cmVkJTIwYW5ndXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60"
},
{
    name: "Toby", 
    breed: "Chillingham Cattle",
    age: 12,
    hobby: "Chill with my homies",
    image: "https://chillinghamwildcattle.com/wp-content/uploads/2019/04/Days-out-image.jpg"
}
    ]
cows.each do |each_cow|
    Cow.create each_cow
    puts "creating cow #{each_cow}"
  end