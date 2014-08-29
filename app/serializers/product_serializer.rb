class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at, :updated_at

  has_one :category, embed: :id
end
