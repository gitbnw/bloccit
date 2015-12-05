class FavoriteMailer < ApplicationMailer
    default from: "byron.weiss@gmail.com"

   def new_comment(user, post, comment)


     headers["Message-ID"] = "<comments/#{comment.id}@radiant-island-8188.herokuapp.com>"
     headers["In-Reply-To"] = "<post/#{post.id}@radiant-island-8188.herokuapp.com>"
     headers["References"] = "<post/#{post.id}@radiant-island-8188.herokuapp.com>"

     @user = user
     @post = post
     @comment = comment


     mail(to: user.email, subject: "New comment on #{post.title}")
   end

   def new_post(topic, post, user)

     headers["Message-ID"] = "<post/#{post.id}@radiant-island-8188.herokuapp.com>"
     headers["References"] = "<topic/#{topic.id}@radiant-island-8188.herokuapp.com>"

     @post = post
     @topic = topic
     @user = user

     mail(to: user.email, subject: "You added a post to #{topic.name} and will be notified when comments are added")

   end


end
