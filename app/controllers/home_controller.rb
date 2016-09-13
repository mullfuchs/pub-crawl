class HomeController < ApplicationController

  def index
    parameters = { term: 'bars + beacon hill'}
    @results = Yelp.client.search('Seattle', parameters)
    # render json: results
  end

  def new
  end

  def self.search(params)
    parameters = { term: 'Bars'}
    @results = Yelp.client.search('Seattle', parameters)
    # render json: results
  end

end