class Rating < ActiveRecord::Base

  has_many :topics #, :foreign_key => 'rating', :primary_key => 'severity'
  has_many :posts #, :foreign_key => 'rating', :primary_key => 'severity'

  enum severity: [:PG, :PG13, :R]

  def self.update_rating(rating_enum)
    Rating.find_or_create_by severity: Rating.severities[rating_enum]
  end



end
