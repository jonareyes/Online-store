require_relative 'model'
require_relative 'view'

class StoreController	
	def initialize 
		@view = View.new
		@store = Store.new
		master_view
		# @store = Store.new
	end

	def master_view
		option = @view.initial_view
		select(option)
	end

	def select(option)
		case option 
		when "1" then login
		when "2" then register
		when "3" then exit
		end
	end
	
	def list(option)
		case option
		when "1" then logout
		when "2" then products_index
		when "3" then create_product
		when "4" then users_index
		end
	end

	def login 
		user_data = @view.display_login

		if user_data[0] == $usuarios[0].mail && user_data[1] == $usuarios[0].password
			option = @view.second_view
			list(option)
		elsif user_data[0] != $usuarios[0].mail && user_data[1] == $usuarios[0].password
			puts "User not register\n"
			puts ""	
			option = @view.initial_view
			list(option)
		end	
	end

	def register
		user_attributes = @view.display_register
		user = User.new(user_attributes[0], user_attributes[1], user_attributes[2])
		user.add_user(user)
		option = @view.second_view
		list(option)
	end

	def exit
		@view.display_exit	
	end		



	def logout	
		@view.logout_method
		option = @view.initial_view
		select(option)
	end

	def create_product
		product_attributes = @view.creando_producto
		# product_data.inspect
		@store.add_product(product_attributes[0], product_attributes[1])
		products = @store.products
		products.each do |product|
			puts "Name: #{product.name} ---> Price: #{product.price}"
		end
		option = @view.second_view
		list(option)
	end
end



store = StoreController.new
