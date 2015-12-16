require_relative 'model'
require_relative 'view'

class StoreController	
	def initialize 
		@view = View.new
		@store = Store.new
		master_view
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
		when "2" then products_list
		when "3" then create_product
		when "4" then users_index
		end
	end

	def login 
		user_data = @view.display_login
		$usuarios.each do |user|
			if user_data[0] == user.mail && user_data[1] == user.password
				option = @view.second_view
				list(option)
			else 
				puts "User not register\n"
				puts ""	
				option = @view.initial_view
				list(option)
			end
		end	
	end


	def register
		type = @view.type_client
		user_attributes = @view.display_register

		if type == "admin"
			user = Admin.new(user_attributes[0], user_attributes[1], user_attributes[2])
		elsif type == "vendor"
			user = Vendor.new(user_attributes[0], user_attributes[1], user_attributes[2])
		elsif type == "client"
			user = Client.new(user_attributes[0], user_attributes[1], user_attributes[2])
		else
			list =@view.initial_view
		puts "Try again"
		puts ""
		 user.add_user(user)
		 option = @view.second_view
		 list(option)
		end
		# user = User.new(user_attributes[0], user_attributes[1], user_attributes[2])
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
		@store.add_product(product_attributes[0], product_attributes[1])
		option = @view.second_view
		list(option)
	end

	def products_list
		@view.products_list
		products = @store.products
		products.each do |product|
			puts "Name: #{product.name} ---> Price: #{product.price}"
		end
		@view.products_list	
	end

	def users_index 
		@view.users_list($usuarios)
	end

	def type
		
	end
end



store = StoreController.new
