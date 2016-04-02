# non dobbiamo richiedere la gemma httparty grazie
# a bundler
class Coursera
	include HTTParty

	# definisco le var usate in tutto il resto della classe
	base_uri 'https://api.coursera.org/api/catalog.v1/courses'
	# definisco i par di default della chiamata
	default_params fields: "smallIcon,shortDescription", q: "search"
	# definisco il formato
	format :json

	# definisco il proxy
	#http_proxy('proxy.cervedgroup.com', 8080)

	# definisco il metodo for per la ricerca
	def self.for term
		# inserisco verify per non aver problemi con SSL
		get("", query: { query: term}, verify: false)["elements"]
	end
end