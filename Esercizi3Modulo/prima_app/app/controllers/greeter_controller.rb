class GreeterController < ApplicationController
  # definiamo le variabili e la logica degli oggetti
  # problema dentro alla action hello
  def hello
  	nomi_random = ["Alex", "Joe", "Michael"]
  	# definisco la variabile ISTANZA DA USARE NELLA
  	# VIEW
  	@nome = nomi_random.sample
  	# var istanza tempo
  	@time = Time.now
  	# definsico un contatore che tenga traccia delle
  	# volte in cui viene mostrata la pagina
  	@count_displayed ||= 0
  	@count_displayed += 1 
  end
  
  # definisco la nuova azione
  #def goodbye
  #end
end
