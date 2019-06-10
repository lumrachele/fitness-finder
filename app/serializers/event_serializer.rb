class EventSerializer < ActiveModel::Serializer
  has_many :favorites
  attributes :id, :title, :description, :date, :time
end
