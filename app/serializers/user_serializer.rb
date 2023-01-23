class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :phone_number, :email, :first_name, :last_name, :password_digest, :avatar
end
