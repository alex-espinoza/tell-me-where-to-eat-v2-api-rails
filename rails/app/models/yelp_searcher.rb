class YelpSearcher
  RESULTS_LIMIT = 20

  def initialize(latitude, longitude, meters)
    @latitude = latitude
    @longitude = longitude
    @meters = meters
  end

  def create_randomized_search_parameters
    @sort = Random.rand(0..2) # 0 = Best matched, 1 = Distance, 2 = Highest Rated
    @categories = CategoryList.get_random(20)
  end

  def search
    @response = Yelp.client.search_by_coordinates(
      { latitude: @latitude,
        longitude: @longitude
      },
      { term: '',
        limit: RESULTS_LIMIT,
        sort: @sort,
        category_filter: @categories,
        radius_filter: @meters
      }
    )
  end

  def choose_random_business
    random = Random.rand(0...@response.total)
    @response.businesses[random]
  end
end
