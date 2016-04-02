# esempio uso gemma ruby httparty
# per parserizzare il dato recuperato dal web service
#https://api.coursera.org/api/catalog.v1/courses?fields=smallIcon,shortDescription&q=search&query=ruby
require 'httparty'
require 'pp' # mi serve per stampare json con indentazione

class Coursera
  include HTTParty
  
  # definisco parametri httparty
  base_uri 'https://api.coursera.org/api/catalog.v1/courses'
  default_params fields: "smallIcon,shortDescription", q: 'search'
  format :json
  
  # definisco il metodo di CLASSE per il recupero del
  # dato inserendo la query
  def self.for termine
    # recupero json
    get("", query: { query: termine })["elements"]
  end
end

# invoco metodo di classe per stampare il JSON risultante
pp Coursera.for "python"