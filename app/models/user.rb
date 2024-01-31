class User < ApplicationRecord

  has_many :tests_users
  has_many :tests, through: :tests_users


  def test_list(level)
    Test.where(id: User.where(name: self.name).pluck(:test_id), level: level)
  end
  
end
