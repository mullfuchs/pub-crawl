class HomeController < ApplicationController

  def index
    parameters = { term: 'Bars'}
    @results = Yelp.client.search('Seattle', parameters)
    # render json: results
  end

  def new
  end

  def search
    parameters = { term: 'Bars'}
    @results = Yelp.client.search('Seattle', parameters)
    # render json: results
  end

end