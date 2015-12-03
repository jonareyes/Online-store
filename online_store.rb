require_relative 'model'
require_relative 'view'

class StoreController	
	def initialize 
		@view = View.new
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
		
	end	


	def products_index
		
	end

	def create_product
			
	end	
end



store = Store.new