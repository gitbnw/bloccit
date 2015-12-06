require 'rails_helper'
 include RandomData
 include SessionsHelper
<<<<<<< HEAD
 
RSpec.describe VotesController, type: :controller do
   let(:my_user) { User.create!(name: "Bloccit User", email: "user@bloccit.com", password: "helloworld") }
   let(:other_user) { User.create!(name: RandomData.random_name, email: RandomData.random_email, password: "helloworld", role: :member) }
   let(:my_topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph) }
   let(:user_post) { my_topic.posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph, user: other_user) }
   let(:my_vote) { Vote.create!(value: 1) }
 
=======

RSpec.describe VotesController, type: :controller do
  let(:my_topic) { create(:topic) }
  let(:my_user) { create(:user) }
  let(:other_user) { create(:user) }
  let(:user_post) { create(:post, topic: my_topic, user: other_user) }
  let(:my_vote) { Vote.create!(value: 1) }

>>>>>>> cp-45-pubpro

   context "guest" do
     describe "POST up_vote" do
       it "redirects the user to the sign in view" do
         post :up_vote, post_id: user_post.id
         expect(response).to redirect_to(new_session_path)
       end
     end
<<<<<<< HEAD
     
=======

>>>>>>> cp-45-pubpro
     describe "POST down_vote" do
       it "redirects the user to the sign in view" do
         delete :down_vote, post_id: user_post.id
         expect(response).to redirect_to(new_session_path)
       end
<<<<<<< HEAD
     end     
     
   end
 
=======
     end

   end

>>>>>>> cp-45-pubpro

   context "signed in user" do
     before do
       create_session(my_user)
       request.env["HTTP_REFERER"] = topic_post_path(my_topic, user_post)
     end
<<<<<<< HEAD
 
=======

>>>>>>> cp-45-pubpro
     describe "POST up_vote" do

       it "the users first vote increases number of post votes by one" do
         votes = user_post.votes.count
         post :up_vote, post_id: user_post.id
         expect(user_post.votes.count).to eq(votes + 1)
       end
<<<<<<< HEAD
 
=======

>>>>>>> cp-45-pubpro

       it "the users second vote does not increase the number of votes" do
         post :up_vote, post_id: user_post.id
         votes = user_post.votes.count
         post :up_vote, post_id: user_post.id
         expect(user_post.votes.count).to eq(votes)
       end
<<<<<<< HEAD
 
=======

>>>>>>> cp-45-pubpro

       it "increases the sum of post votes by one" do
         points = user_post.points
         post :up_vote, post_id: user_post.id
         expect(user_post.points).to eq(points + 1)
       end
<<<<<<< HEAD
 
=======

>>>>>>> cp-45-pubpro

       it ":back redirects to posts show page" do
         request.env["HTTP_REFERER"] = topic_post_path(my_topic, user_post)
         post :up_vote, post_id: user_post.id
         expect(response).to redirect_to([my_topic, user_post])
       end
<<<<<<< HEAD
 
=======

>>>>>>> cp-45-pubpro

       it ":back redirects to posts topic show" do
         request.env["HTTP_REFERER"] = topic_path(my_topic)
         post :up_vote, post_id: user_post.id
         expect(response).to redirect_to(my_topic)
       end
     end
<<<<<<< HEAD
     
=======

>>>>>>> cp-45-pubpro
    describe "POST down_vote" do
       it "the users first vote increases number of post votes by one" do
         votes = user_post.votes.count
         post :down_vote, post_id: user_post.id
         expect(user_post.votes.count).to eq(votes + 1)
       end
<<<<<<< HEAD
 
=======

>>>>>>> cp-45-pubpro
       it "the users second vote does not increase the number of votes" do
         post :down_vote, post_id: user_post.id
         votes = user_post.votes.count
         post :down_vote, post_id: user_post.id
         expect(user_post.votes.count).to eq(votes)
       end
<<<<<<< HEAD
 
=======

>>>>>>> cp-45-pubpro
       it "decreases the sum of post votes by one" do
         points = user_post.points
         post :down_vote, post_id: user_post.id
         expect(user_post.points).to eq(points - 1)
       end
<<<<<<< HEAD
 
=======

>>>>>>> cp-45-pubpro
       it ":back redirects to posts show page" do
         request.env["HTTP_REFERER"] = topic_post_path(my_topic, user_post)
         post :down_vote, post_id: user_post.id
         expect(response).to redirect_to([my_topic, user_post])
       end
<<<<<<< HEAD
 
=======

>>>>>>> cp-45-pubpro
       it ":back redirects to posts topic show" do
         request.env["HTTP_REFERER"] = topic_path(my_topic)
         post :down_vote, post_id: user_post.id
         expect(response).to redirect_to(my_topic)
       end
<<<<<<< HEAD
     end     
=======
     end
>>>>>>> cp-45-pubpro
   end
end
