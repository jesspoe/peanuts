class Admin < ApplicationRecord
  before_save { self.username = username.downcase }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }


end
