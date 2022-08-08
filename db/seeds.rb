# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Post.destroy_all
Comment.destroy_all


puts "Seeding users..."
10.times do 
    User.create!(username: Faker::Name.first_name, password: "123", profile_pic: "https://i.pravatar.cc/150?img=100", bio: Faker::Restaurant.description)
end

posts = [
    {
        user: Faker::Name.first_name,
        post: "https://picsum.photos/800/900",
        likes: rand(100),
        description: Faker::Restaurant.description
    },
    {
        user: Faker::Name.first_name,
        post: "https://picsum.photos/800/901",
        likes: rand(100),
        description: Faker::Restaurant.description
    },
    {
        user: Faker::Name.first_name,
        post: "https://picsum.photos/800",
        likes: rand(100),
        description: Faker::Restaurant.description
    },
    {
        user: Faker::Name.first_name,
        post: "https://picsum.photos/800/901",
        likes: rand(100),
        description: Faker::Restaurant.description
    },
    {
        user: Faker::Name.first_name,
        post: "https://picsum.photos/800/9",
        likes: rand(100),
        description: Faker::Restaurant.description
    },
    {
        user: Faker::Name.first_name,
        post: "https://picsum.photos/800/90",
        likes: rand(100),
        description: Faker::Restaurant.description
    },
    {
        user: Faker::Name.first_name,
        post: "https://picsum.photos/800/100",
        likes: rand(100),
        description: Faker::Restaurant.description
    },
    {
        user: Faker::Name.first_name,
        post: "https://picsum.photos/800/301",
        likes: rand(100),
        description: Faker::Restaurant.description
    },
    {
        user: Faker::Name.first_name,
        post: "https://picsum.photos/800/401",
        likes: rand(100),
        description: Faker::Restaurant.description
    },
    {
        user: Faker::Name.first_name,
        post: "https://picsum.photos/800/501",
        likes: rand(100),
        description: Faker::Restaurant.description
    },
    {
        user: Faker::Name.first_name,
        post: "https://picsum.photos/800/601",
        likes: rand(100),
        description: Faker::Restaurant.description
    },
    {
        user: Faker::Name.first_name,
        post: "https://picsum.photos/800/701",
        likes: rand(100),
        description: Faker::Restaurant.description
    }
]

puts "Seeding posts..."
posts.each do |o|
    Post.create!(user: o[:user], post: o[:post], likes: o[:likes], description: o[:description])
end

puts "Seeding comments..."
10.times do
    Comment.create!(comment: Faker::Restaurant.description, likes: rand(100), username: Faker::Name.first_name, user_id: User.all.ids.sample, post_id: Post.all.ids.sample)
end

puts "Seeding completed successfully"