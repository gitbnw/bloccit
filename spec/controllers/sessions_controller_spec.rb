require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

<<<<<<< HEAD
  let (:my_user) { User.create!(name: "Blochead", email: "blochead@bloc.io", password: "password") }
 
=======
let(:my_user) { create(:user) }

>>>>>>> cp-45-pubpro
   describe "GET new" do
     it "returns http success" do
       get :new
       expect(response).to have_http_status(:success)
     end
   end
<<<<<<< HEAD
 
=======

>>>>>>> cp-45-pubpro
   describe "POST sessions" do
     it "returns http success" do
       post :create, session: {email: my_user.email}
       expect(response).to have_http_status(:success)
     end
<<<<<<< HEAD
 
=======

>>>>>>> cp-45-pubpro
     it "initializes a session" do
       post :create, session: {email: my_user.email, password: my_user.password}
       expect(session[:user_id]).to eq my_user.id
     end
<<<<<<< HEAD
 
=======

>>>>>>> cp-45-pubpro
     it "does not add a user id to session due to missing password" do
       post :create, session: {email: my_user.email}
       expect(session[:user_id]).to be_nil
     end
<<<<<<< HEAD
 
=======

>>>>>>> cp-45-pubpro
     it "flashes #error with bad email address" do
       post :create, session: {email: "does not exist"}
       expect(flash[:error]).to be_present
     end
<<<<<<< HEAD
 
=======

>>>>>>> cp-45-pubpro
     it "renders #new with bad email address" do
       post :create, session: {email: "does not exist"}
       expect(response).to render_template :new
     end
<<<<<<< HEAD
 
=======

>>>>>>> cp-45-pubpro
     it "redirects to the root view" do
       post :create, session: {email: my_user.email, password: my_user.password}
       expect(response).to redirect_to(root_path)
     end
   end
<<<<<<< HEAD
   
=======

>>>>>>> cp-45-pubpro
   describe "DELETE sessions/id" do
     it "render the #welcome view" do
       delete :destroy, id: my_user.id
       expect(response).to redirect_to root_path
     end
<<<<<<< HEAD
 
=======

>>>>>>> cp-45-pubpro
     it "deletes the user's session" do
       delete :destroy, id: my_user.id
       expect(assigns(:session)).to be_nil
     end
<<<<<<< HEAD
 
=======

>>>>>>> cp-45-pubpro
     it "flashes #notice" do
       delete :destroy, id: my_user.id
       expect(flash[:notice]).to be_present
     end
<<<<<<< HEAD
   end   
   
=======
   end

>>>>>>> cp-45-pubpro
end
