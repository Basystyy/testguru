class User < ApplicationRecord

  devise :database_authenticatable,
        :registerable,
        :recoverable,
        :rememberable,
        :validatable

  has_many :test_passages, dependent: :destroy
  has_many :tests, through: :test_passages, dependent: :destroy
  has_many :author_tests, class_name: 'Test', foreign_key: :author_id, dependent: :destroy

  VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL }, uniqueness: { case_sensitive: false }
  before_save :email_normalize

  def test_list(level)
    Test.where(id: User.where(name: self.name).pluck(:test_id), level: level)
  end

  def test_passage(test)
    test_passages.order(id: :desc).find_by(test_id: test.id)
  end

  private

  def email_normalize
    self.email = email.strip.downcase
  end

end