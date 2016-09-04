require 'rails_helper'

describe CategoryList do
  describe '#get_random' do
    it 'returns a string of comma separated categories' do
      categories = CategoryList.get_random(5)

      expect(categories.count(',')).to eq(4)
    end
  end
end
