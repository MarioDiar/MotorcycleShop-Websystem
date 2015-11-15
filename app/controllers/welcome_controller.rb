class WelcomeController < ApplicationController
	#call the private methods before any action
	# layout 'dashboard', :only => [:motos]

	#index
	def index
		@noticia = Article.published.last
	end

	def show
		@motorcycle = Motorcycle.find(params[:id])
	end

	def noticia
		@noticia = Article.find(params[:id])
	end

	#Method to display each branch in the googles map of the main page
	def agencias
		@branches = Branch.all
		map = 'https://maps.google.com.mx/maps?f=q&source=s_q&hl=en&geocode=&q='
		
		@counter = 0;
		@mapas = []
		
		#converting the data from each branch to a google URL api to display a map for each branch
		@branches.each do |branch|
			@mapas[@counter] = map + branch.street + "," + branch.postalCode + "," + branch.city + "," + branch.state + "&output=embed"
    	@mapas[@counter].gsub!(/\s/,'')
    	@counter += 1
		end

		@counter = 0
	end
	
	#motos
	def motos
		@motorcycles = Motorcycle.all
	end

	#noticias
	def noticias
		@noticias = Article.published.lasts
	end

	#contact
	def contacto
		@contact = Contact.new
	end

	#private methods
	private

end
