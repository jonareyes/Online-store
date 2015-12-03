require_relative 'model'
require_relative 'view'

class Store	

	def initialize 
		@model = Model.new
		@view = View.new
			
	end

	def select
		puts "Welcome to the online STORE: Crea tu playera, (www.your-own-style.com)"
		puts "----------------------------------------------------------------------"
		puts "Select option number:\n 1.Login.\n 2.Register.\n 3.Exit.\n"
		puts ""
		text = gets.chomp 
		case text 
		when "1" then login
		when "2" then register
		when "3" then exit	
		end
	end

	def second_display
		puts "Welcome . Your type is "
		puts "----------------------------------------------------------------------"
		puts "Select option number:\n 1.Logout.\n 2.Products index.\n 3.Create product.\n 4.Users index"
		text = gets.chomp
		case text 
		when "1" then logout
		when "2" then products_index
		when "3" then create_product
		when "4" then users_index
		end
	end

	def login 
		@view.display_login
		second_display
	end

	def register
		@view.display_register
		second_display
	end

	def exit
		@view.display_exit	
	end		

	def logout
		select
	end	


	def products_index
		
	end

	def create_product
			
	end	
end



store = Store.new
store.select
