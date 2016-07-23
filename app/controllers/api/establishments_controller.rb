class Api::EstablishmentsController < ApplicationController
  def find
    searcher = YelpSearcher.new(params[:latitude], params[:longitude], params[:radius]);
    searcher.create_randomized_search_parameters

    begin
      searcher.search
    rescue Yelp::Error::Base => e
      return render json: {error: e},
                    status: 500
    end

    random_establishment = searcher.choose_random_business
    establishment = Establishment.build_for_api_response(random_establishment)

    render json: establishment,
           status: 200
  end
end
