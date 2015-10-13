class WelcomeController < ApplicationController
	#call the private methods before any action
	# layout 'dashboard', :only => [:motos]
	before_action :getAddresses
	before_action :getMotorcycles

	#index
	def index
	end

	def show
		@motorcycle = @motorcycle = Motorcycle.find(params[:id])
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
	end

	#noticias
	def noticias
		@noticias = Article.all
	end

	#contact
	def contacto
		@contact = Contact.new
	end

	#private methods
	private

	#get the data of all the motorcycles
	def getMotorcycles
		@motorcycles = Motorcycle.all
	end



	#get the addresses of the branches
	def getAddresses
		@addresses = []
		branches = Branch.all
		counter = 0

		#saving the address of each branch to be able to look it up in the main page
		branches.each do |branch|
			address = branch.street + "," + branch.postalCode + "," + branch.city + "," + branch.state
			@addresses[counter] = address
			@addresses[counter].gsub!(/\s/,'')
			counter += 1
		end

	end
end
