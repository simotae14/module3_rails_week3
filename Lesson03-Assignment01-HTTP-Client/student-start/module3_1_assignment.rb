require 'httparty'
require 'pp'

class Recipe
  include HTTParty
  
  base_uri 'http://food2fork.com/api/search'
  default_params key: ENV['FOOD2FORK_KEY']
  format :json
  
  def self.for search_term
    get("", query: { q: search_term })["recipes"]
  end
end