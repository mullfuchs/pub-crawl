class HomeController < ApplicationController

  def index
<<<<<<< HEAD
    
=======
>>>>>>> f719889717bfafbc94e2f1ff345e4f620f5ab805
  end

  def new
  end

  def search
    parameters = { term: 'bar'}

    results = Yelp.client.search('Seattle', parameters)
    render json: results
  end

end