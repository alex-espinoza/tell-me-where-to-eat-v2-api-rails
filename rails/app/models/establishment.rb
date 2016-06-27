class Establishment < ActiveRecord::Base
  attr_accessor :name, :categories, :phone_number, :url, :address

  def self.build_for_api_response(random_establishment)
    establishment = Establishment.new
    establishment.name = random_establishment.name
    establishment.categories = random_establishment.categories.map(&:first).join(', ')
    establishment.phone_number = random_establishment.display_phone
    establishment.url = random_establishment.url
    establishment.address = [random_establishment.location.display_address.first, random_establishment.location.display_address.last]
    establishment
  end
end
