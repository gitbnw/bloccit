class Post < ActiveRecord::Base
  has_many :comments

  def censor
    self.assign_attributes(title: 'SPAM')
  end

end
