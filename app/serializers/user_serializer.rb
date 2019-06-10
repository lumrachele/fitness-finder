class UserSerializer < ActiveModel::Serializer
  has_many :favorites
  attributes :id, :name
end
