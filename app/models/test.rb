class Test < ApplicationRecord

  belongs_to :category
  has_many :questions
  has_many :tests-users
  has_many :users, through: :tests-users

  def self.name_list(name)
    list_cat = Category.where(title: name).pluck(:id)
    list_test = Test.select(:title).where(category_id: list_cat)
    list_test.order(title: :desc)
  end    
end