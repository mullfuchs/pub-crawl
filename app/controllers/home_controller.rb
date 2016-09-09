class HomeController < ApplicationController

  def index

  end

  def new
  end

  def search
    parameters = { term: 'bar'}

    results = Yelp.client.search('Seattle', parameters)
    render json: results
  end

end