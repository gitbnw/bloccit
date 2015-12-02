require 'rails_helper'

RSpec.describe Rating, type: :model do
  
  let(:rating) { Rating.create!(severity: 2) }
  
  it { should have_many(:topics).with_foreign_key('rating') }
  it { should have_many(:posts).with_foreign_key('rating') }
  
  describe "attributes" do
    it "should respond to severity" do
      expect(rating).to respond_to(:severity)
    end

  end
  
    # describe ".update_rating" do
    #   it "takes an int and returns a rating" do       
    #     rating_int = rating.severity
        
    #     expect(Rating.update_rating(rating_int)).to eq(rating)
    #   end
    # end  
    
end
