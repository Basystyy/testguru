class Category < ApplicationRecord

  scope :names, -> { order(title: :asc) }
  scope :my_id, -> (category_title) { where(title: category_title).select(:id) }

  has_many :tests

end
