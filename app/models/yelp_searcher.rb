class YelpSearcher
  attr_reader :latitude, :longitude, :meters, :sort, :categories, :response
  RESULTS_LIMIT = 20

  def initialize(latitude, longitude, meters)
    @latitude = latitude
    @longitude = longitude
    @meters = meters
    create_randomized_search_parameters
  end

  def create_randomized_search_parameters
    @sort_by = ['best_match', 'rating', 'review_count', 'distance'].sample
    @categories = CategoryList.get_random(20)
  end

  def search
    @response = yelp_fusion.search_by_coordinates(
      {
        latitude: @latitude,
        longitude: @longitude
      },
      {
        term: '',
        limit: RESULTS_LIMIT,
        sort_by: @sort_by,
        categories: @categories,
        radius: @meters
      }
    )
  end

  def choose_random_business
    random = Random.rand(0...@response.businesses.length)
    @response.businesses[random]
  end
end
