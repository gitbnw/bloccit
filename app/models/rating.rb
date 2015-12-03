class Rating < ActiveRecord::Base
  
  belongs_to :topics, :foreign_key => 'rating', :primary_key => 'severity'
  
  has_many :posts, :foreign_key => 'rating', :primary_key => 'severity'
  
  
  def self.update_rating(rating_enum)

    Rating.find_or_create_by severity: rating_enum

  end
  

    enum severity: {
    PG: 0,
    PG13: 1,
    R: 2
  }
  
end
