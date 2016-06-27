class EstablishmentSerializer < ActiveModel::Serializer
  attributes :name, :categories, :phone_number, :url, :address
end
