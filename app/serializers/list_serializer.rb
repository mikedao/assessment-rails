class ListSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :title, :active

  has_many :tasks
end
