class User < ApplicationRecord
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP },
            :presence => {message: "can't be blank"},
            :uniqueness => true
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates_presence_of :phone_number
  validates_presence_of :first_name
end
