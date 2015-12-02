class Rating < ActiveRecord::Base
  
  has_many :topics, :foreign_key => 'rating', :primary_key => 'rating_id'
  
  has_many :posts, :foreign_key => 'rating', :primary_key => 'rating_id'
  

  def self.update_rating(rating_enum)
    
    Rating.find_by! severity: rating_enum

  end
  

    enum severity: {
    PG: 0,
    PG13: 1,
    R: 2
  }
  
end
