class Api::EstablishmentsController < ApplicationController
  def find
    searcher = YelpSearcher.new('42.347152699999995', '-71.1352516', 805);
    searcher.create_randomized_search_parameters
    searcher.search
    establishment = searcher.choose_random_business

    render json: {response: 'ok'}
  end
end
