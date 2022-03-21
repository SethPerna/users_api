class UsersSerializer
  include JSONAPI::Serializer

  set_type :users
  attributes :first_name, :last_name, :phone_number, :email
end
