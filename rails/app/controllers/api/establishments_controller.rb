class Api::EstablishmentsController < ApplicationController
  def find
    render json: {response: 'ok'}
  end
end
