class UserSerializer < ActiveModel::Serializer
  has_many :favorites
  has_many :events, through: :favorites
  attributes :id, :name
end
