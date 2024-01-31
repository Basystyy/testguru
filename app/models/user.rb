class User < ApplicationRecord

  has_and_belongs_to_many :tests


  def test_list(level)
    Test.where(id: User.where(name: self.name).pluck(:test_id), level: level)
  end
  
end
