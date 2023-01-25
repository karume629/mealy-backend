class AdminSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :avatar, :is_admin, :password_digest
end
