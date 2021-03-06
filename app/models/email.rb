class Email < ApplicationRecord
  before_save { self.address = address.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :address, format: { with: VALID_EMAIL_REGEX }, presence: true, uniqueness: true

end
