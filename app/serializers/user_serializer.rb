class UserSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :username, :email, :created_at, :updated_at

  has_many :products
  has_many :reviews
end
