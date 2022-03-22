class UsersSerializer
  include JSONAPI::Serializer

  set_type :users
  attributes :first_name, :last_name, :email
  attribute :phone_number do |object|
    object.formatted_phone
  end 
end
