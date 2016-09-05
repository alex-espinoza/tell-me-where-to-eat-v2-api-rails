require 'rails_helper'

describe YelpSearcher do
  describe '#initialize' do
    it 'creates a class with latitude, longitude, meters and randomized search parameters' do
      searcher = YelpSearcher.new(42.3471879, -71.1352562, 805)

      expect(searcher.latitude).to eq(42.3471879)
      expect(searcher.longitude).to eq(-71.1352562)
      expect(searcher.meters).to eq(805)
      expect(searcher.sort <= 2).to eq(true)
      expect(searcher.sort >= 0).to eq(true)
      expect(searcher.categories.split(',').all? {|category| CategoryList::CATEGORIES.include?(category)}).to eq(true)
    end
  end

  describe '#search' do
    it 'returns a yelp api response with a list of businesses' do
      response = make_yelp_api_call(805)

      expect(response.businesses.length <= 20).to eq(true)
    end
  end

  describe '#choose_random_business' do
    it 'returns a random establishment from the api response' do
      establishment = make_yelp_api_call(805, true)

      expect(establishment.name.blank?).to eq(false)
    end
  end

  describe 'returns an establishment and the distance is' do
    it 'within a quarter of a mile' do
      establishment = make_yelp_api_call(403, true)

      expect(establishment.distance <= 403).to eq(true)
    end

    it 'within half a mile' do
      establishment = make_yelp_api_call(805, true)

      expect(establishment.distance <= 805).to eq(true)
    end

    it 'within a mile' do
      establishment = make_yelp_api_call(1610, true)

      expect(establishment.distance <= 1610).to eq(true)
    end

    it 'within two miles' do
      establishment = make_yelp_api_call(3219, true)

      expect(establishment.distance <= 3219).to eq(true)
    end
  end
end
