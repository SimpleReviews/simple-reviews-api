class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :instagram_tag, :created_at, :updated_at

  has_one :user, embed: :id, include: true
  has_one :category, embed: :id, include: true

  has_many :reviews, embed: :ids, include: true
end
