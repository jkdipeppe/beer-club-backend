class BeerSerializer < ActiveModel::Serializer
  attributes :id, :brand, :name, :abv, :city, :state, :type

  belongs_to :member
end
