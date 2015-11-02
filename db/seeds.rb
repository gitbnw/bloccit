 include RandomData

 # Create Posts
 # 50.times do

 #   Post.create!(

 #     title:  RandomData.random_sentence,
 #     body:   RandomData.random_paragraph
 #   )
 # end
 posts = Post.all

Post.find_or_create_by(title: "Cool title", body: "Says stuff")

 # Create Comments

 # 100.times do
 #   Comment.create!(

 #     post: posts.sample,
 #     body: RandomData.random_paragraph
 #   )
 # end

 Comment.find_or_create_by(body: "Never read the comments.")

 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
