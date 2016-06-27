class Api::EstablishmentsController < ApplicationController
  def find
    searcher = YelpSearcher.new('42.347152699999995', '-71.1352516', 805);
    searcher.create_randomized_search_parameters

    begin
      searcher.search
    rescue Yelp::Error::Base => e
      render json: {error: e}
      return
    end

    establishment = searcher.choose_random_business

    render json: {name: establishment.name}
  end
end
