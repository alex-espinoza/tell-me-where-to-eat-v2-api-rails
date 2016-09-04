require 'rails_helper'

describe Establishment do
  describe '#build_for_api_response' do
    it "creates a hash of establishment's relevant data to return to the client" do
      random_establishment = make_yelp_api_call(805, true)
      establishment = Establishment.build_for_api_response(random_establishment)

      expect(establishment.name).to eq(random_establishment.name)
      expect(establishment.categories).to eq(random_establishment.categories.map(&:first).join(', '))
      expect(establishment.phone_number).to eq(random_establishment.display_phone)
      expect(establishment.url).to eq(random_establishment.url)
      expect(establishment.address).to eq([random_establishment.location.display_address.first, random_establishment.location.display_address.last])
      expect(establishment.coordinates).to eq(Geocoder.coordinates(establishment.address.join(' ')))
    end
  end
end
