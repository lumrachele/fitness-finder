class EventSerializer < ActiveModel::Serializer
  has_many :favorites
  has_many :users, through: :favorites
  attributes :id, :title, :description, :date, :time
end
