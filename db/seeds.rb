include RandomData

# Create Posts
id = 0
50.times do

  Post.create!(
    id:  id,
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )


  id +=1
end
posts = Post.all

# Create Comments

100.times do
  Comment.create!(

    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
