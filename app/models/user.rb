class User < ApplicationRecord
  has_many :favorites
  has_many :events, through: :favorites
end
