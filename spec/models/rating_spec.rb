require 'rails_helper'

RSpec.describe Rating, type: :model do

  let(:rating) { Rating.create!(severity: 'R') }

  it { should have_many(:topics) }
  it { should have_many(:posts) }

  describe "attributes" do
    it "should respond to severity" do
      expect(rating).to respond_to(:severity)
    end

  end

    describe ".update_rating" do
      it "takes an int and returns a rating" do
        rating_severity = rating.severity

        expect(Rating.update_rating(rating_severity)).to eq(rating)
      end
    end

end
