class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :pwd, :estado
end
