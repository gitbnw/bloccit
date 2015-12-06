require 'rails_helper'
 include RandomData
 include SessionsHelper
<<<<<<< HEAD
 
RSpec.describe FavoritesController, type: :controller do
    
   let(:my_user) { User.create!(name: "Bloccit User", email: "user@bloccit.com", password: "helloworld") }
   let(:my_topic) { Topic.create!(name:  RandomData.random_sentence, description: RandomData.random_paragraph) }
   let(:my_post) { my_topic.posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph, user: my_user) }
 
 
=======

RSpec.describe FavoritesController, type: :controller do

  let(:my_topic) { create(:topic) }
  let(:my_user) { create(:user) }
  let(:my_post) { create(:post, topic: my_topic, user: my_user) }
  

>>>>>>> cp-45-pubpro
   context 'guest user' do
     describe 'POST create' do
       it 'redirects the user to the sign in view' do
         post :create, { post_id: my_post.id }

         expect(response).to redirect_to(new_session_path)
       end
     end
<<<<<<< HEAD
     
=======

>>>>>>> cp-45-pubpro
      describe 'DELETE destroy' do
       it 'redirects the user to the sign in view' do
         favorite = my_user.favorites.where(post: my_post).create
         delete :destroy, { post_id: my_post.id, id: favorite.id }
         expect(response).to redirect_to(new_session_path)
       end
     end
<<<<<<< HEAD
     
   end
 
=======

   end

>>>>>>> cp-45-pubpro
   context 'signed in user' do
     before do
       create_session(my_user)
     end
<<<<<<< HEAD
 
=======

>>>>>>> cp-45-pubpro
     describe 'POST create' do

       it 'redirects to the posts show view' do
         post :create, { post_id: my_post.id }
         expect(response).to redirect_to([my_topic, my_post])
       end
<<<<<<< HEAD
 
       it 'creates a favorite for the current user and specified post' do

         expect(my_user.favorites.find_by_post_id(my_post.id)).to be_nil
 
         post :create, { post_id: my_post.id }
 
=======

       it 'creates a favorite for the current user and specified post' do

         expect(my_user.favorites.find_by_post_id(my_post.id)).to be_nil

         post :create, { post_id: my_post.id }

>>>>>>> cp-45-pubpro

         expect(my_user.favorites.find_by_post_id(my_post.id)).not_to be_nil
       end
     end

     describe 'DELETE destroy' do
       it 'redirects to the posts show view' do
         favorite = my_user.favorites.where(post: my_post).create
         delete :destroy, { post_id: my_post.id, id: favorite.id }
         expect(response).to redirect_to([my_topic, my_post])
       end
<<<<<<< HEAD
 
=======

>>>>>>> cp-45-pubpro
       it 'destroys the favorite for the current user and post' do
         favorite = my_user.favorites.where(post: my_post).create

         expect( my_user.favorites.find_by_post_id(my_post.id) ).not_to be_nil
<<<<<<< HEAD
 
         delete :destroy, { post_id: my_post.id, id: favorite.id }
 

         expect( my_user.favorites.find_by_post_id(my_post.id) ).to be_nil
       end
     end     
     
   end 
=======

         delete :destroy, { post_id: my_post.id, id: favorite.id }


         expect( my_user.favorites.find_by_post_id(my_post.id) ).to be_nil
       end
     end

   end
>>>>>>> cp-45-pubpro
end
