class Email < ApplicationRecord
  validates :name, presence: true
  validates :address, format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, presence: true

end
