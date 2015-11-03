class Post < ActiveRecord::Base
  has_many :comments

  def censor
    self.update(title: 'SPAM')
  end

end
