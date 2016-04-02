# definiamo la richiesta di httparty e pp che fanno
# parte di Ruby
require 'httparty'
require 'pp'

# definisco classe Coursera che includa moodulo HTTParty
class Coursera
	include HTTParty

	# definiamo la base_uri della api
	base_uri 'https://api.coursera.org/api/catalog.v1/courses'
	# definiamo i parametri usati nella ricerca
	default_params fields: "smallIcon,shortDescription", q: 'search'
	# definisco il formato ritorno
	format :json

	http_proxy('proxy.cervedgroup.com', 8080)

	# definisco il metodo che faccia la vera ricerca
	# passandogli il linguaggio da ricercare
	def self.for term
		# dato il termine in input da ricecare faccio una
		# get, estraggo da elements quelli che soddisfano
		# il search
		get("", query: { query: term}, verify: false)["elements"]

	end
end

# stampo il Jsono per python in bello stile
pp Coursera.for "angular"