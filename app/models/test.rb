class Test < ApplicationRecord

  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  has_many :questions
  has_many :tests_users
  has_many :users, through: :tests_users

  scope :easy, -> { where(level: 0..1) }
  scope :medium, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..Float::INFINITY) }

  def self.name_list(name)
    list_cat = Category.where(title: name).pluck(:id)
    list_test = Test.select(:title).where(category_id: list_cat)
    list_test.order(title: :desc)
  end    
end