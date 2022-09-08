puts "🌱 Seeding spices..."

# Seed your database here

# Make 10 users
10.times do
    Author.create(name: Faker::Name.name)
end

# Make 35 blogs
35.times do
    author = Author.order('RANDOM()').first
    blog = Blog.create(
        title: Faker::Quote.robin,
        content: Faker::Quote.matz,
        author_id: author.id
    )

    rand(1..5).times do
        Review.create(
            comment: Faker::Lorem.sentence,
            author_id: author.id,
            blog_id: blog.id
        )
    end
end

# Blog.create([
#   {
#     title: "Hello 👋",
#     content: "Liza"
#   },
#   {
#     title: "Hi!",
#     content: "Duane"
#   },
#   {
#     title: "let's get this chat app working",
#     content: "Liza"
#   },
#   {
#     title: "ngl, this looks like a lot 😬",
#     content: "Duane"
#   },
#   {
#     title: "You got this! 💪",
#     content: "Liza"
#   }
# ])


puts "✅ Done seeding!"
