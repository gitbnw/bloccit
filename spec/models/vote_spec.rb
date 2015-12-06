require 'rails_helper'
include RandomData

RSpec.describe Vote, type: :model do
<<<<<<< HEAD
   let(:topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph) }
   let(:user) { User.create!(name: "Bloccit User", email: "user@bloccit.com", password: "helloworld") }
   let(:post) { topic.posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph, user: user) }
   let(:vote) { Vote.create!(value: 1, post: post, user: user) }
 
=======
  let(:topic) { create(:topic) }
  let(:user) { create(:user) }
  let(:post) { create(:post) }
  let(:vote) { Vote.create!(value: 1, post: post, user: user) }

>>>>>>> cp-45-pubpro

   it { should belong_to(:post) }
   it { should belong_to(:user) }

   it { should validate_presence_of(:value) }

   it { should validate_inclusion_of(:value).in_array([-1, 1]) }
<<<<<<< HEAD
   
=======

>>>>>>> cp-45-pubpro
   describe "update_post callback" do
     it "triggers update_post on save" do

       expect(vote).to receive(:update_post).at_least(:once)
       vote.save
     end
<<<<<<< HEAD
 
=======

>>>>>>> cp-45-pubpro
     it "#update_post should call update_rank on post " do

       expect(post).to receive(:update_rank).at_least(:once)
       vote.save
     end
   end
<<<<<<< HEAD
   
=======

>>>>>>> cp-45-pubpro
end
