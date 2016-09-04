module YelpSearcherHelper
  def make_yelp_api_call(radius, get_random=false)
    searcher = YelpSearcher.new(42.3471879, -71.1352562, radius)
    response = searcher.search

    if get_random
      searcher.choose_random_business
    else
      response
    end
  end
end
