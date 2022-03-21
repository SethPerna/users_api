require 'rails_helper'
RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:phone_number) }
    it { should validate_presence_of(:first_name) }
  end

  describe 'instance and class methods' do
    it '#formatted_phone' do
      user_1 = User.create!(first_name: "Seth", last_name: "Perna", phone_number: "1(540)-347-9309", email: "gseth26@gmail.com")
      user_2 = User.create!(first_name: "Seth", last_name: "Perna", phone_number: "248-447-9309", email: "gseth21@gmail.com")
      user_3 = User.create(first_name: "Seth", last_name: "Perna", phone_number: "048-047-9309", email: "gseth27@gmail.com")
      user_4 = User.create!(first_name: "Seth", phone_number: "248-447-9309", email: "gseth31@gmail.com")
      user_5 = User.create(last_name: "bradley", phone_number: "248-447-9309", email: "gseth34@gmail.com")
      # testing special chars can be used when entering a phone number
      user_6 = User.create!(first_name: "Seth", last_name: "Perna", phone_number: "1.540-347-9309", email: "gseth76@gmail.com")
      user_7 = User.create!(first_name: "Seth", last_name: "Perna", phone_number: "248-447-9309", email: "gseth29@gmail.com")

      expect(user_1.phone_number).to eq("+15403479309")
      expect(user_2.phone_number).to eq("+12484479309")
      expect(user_1.formatted_phone).to eq("(540) 347-9309")
      expect(user_4).to be_a User
      expect(user_6).to be_a User
      expect(user_7).to be_a User
      #testing that only valid phone numbers can be passed and that first name is required but not last name
      expect(user_3.save).to eq(false)
      expect(user_5.save).to eq(false)
    end
  end
end
