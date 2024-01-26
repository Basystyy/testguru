class User < ApplicationRecord

  def test_list(level)
    Test.where(id: User.where(name: self.name).pluck(:test_id), level: level)
  end
  
end
