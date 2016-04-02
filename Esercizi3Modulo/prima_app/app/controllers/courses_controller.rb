class CoursesController < ApplicationController
  def index
  	# definiamo il termine di ricerca, in questo esempio
  	# 'jhu' e passeremo questo termine di ricerca come
  	# parametro per il metodo di classe for
  	
  	# uso helper looking_for
  	@search_term = params[:looking_for] || 'jhu'
  	@courses = Coursera.for(@search_term)
  end
end
