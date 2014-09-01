class LikeSerializer < ActiveModel::Serializer
  attributes :id, :created_at

  has_one :user, embed: :id, include: true
  has_one :review, embed: :id, include: true
end
