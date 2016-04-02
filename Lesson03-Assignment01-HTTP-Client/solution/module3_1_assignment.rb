require 'httparty'
require 'pp'

class Recipe
  include HTTParty

  base_uri "http://food2fork.com/api"
  default_params key: ENV["FOOD2FORK_KEY"]
  format :json

	# definisco proxy se siamo sotto esso
	#http_proxy('proxy.cervedgroup.com', 8080)


  def self.for (keyword)
    get("/search", query: {q: keyword})["recipes"]
  end
end