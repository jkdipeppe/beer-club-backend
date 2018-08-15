class MemberSerializer < ActiveModel::Serializer
  attributes :id

  has_many  :beers
end
