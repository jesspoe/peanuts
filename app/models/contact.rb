class Contact < ApplicationRecord

  validates :name, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'Only valid emails allowed' } 
  validates :message, presence: true, length: {minimum: 12}
end


