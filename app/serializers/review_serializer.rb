class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :body, :review_type, :created_at, :updated_at

  has_one :user, embed: :id, include: true
  has_one :product, embed: :id
end
