class FavoriteSerializer < ActiveModel::Serializer
  # belongs_to :user
  # belongs_to :event
  attributes :id, :user_id, :event_id
end
