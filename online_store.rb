require_relative 'model'
require_relative 'view'

class StoreController	
	def initialize 
		@view = View.new
		@store = Store.new
		master_view
		@current_user = ""
	end
#Se crea master view para mostrar la lista inicial
	def master_view
		option = @view.initial_view
		select(option)
	end
#Se crea el metodo select para poder seleccionar el numero de la lista inicial
	def select(option)
		case option 
		when "1" then login
		when "2" then register
		when "3" then exit
		end
	end
#Se crea el metodo list para mostrar la segundo lista y escoger opciones	
	def list(option)
		case option
		when "1" then logout
		when "2" then products_list
		when "3" then create_product
		when "4" then users_index
		end
	end
#Este metodo sirve para crear el inicio del usuario y poder entrar al programa  
	def login 
		user_data = @view.display_login
		$users.each do |user|
			if user_data[0] == user.mail && user_data[1] == user.password
				@current_user = user
				option = @view.second_view(user, user.actions)
				list(option)
			else 
				puts "User not register\n"
				puts ""	
				option = @view.initial_view
				list(option)
			end
		end	
	end
#En este metodo se crea el registro de usuario para poder guardarlo y poder tener acceso 
#e interactuar con el programa
	def register
		type = @view.type_client
		# user_attributes = @view.display_register
		if type == "admin"
			user_attributes = @view.display_register
			user = Admin.new(user_attributes[0], user_attributes[1], user_attributes[2])
			user.add_user(user)
			@current_user = user
			option = @view.second_view(user, user.actions)
			list(option)
		elsif type == "vendor"
			user_attributes = @view.display_register
			user = Vendor.new(user_attributes[0], user_attributes[1], user_attributes[2])
			user.add_user(user)
			@current_user = user
			option = @view.second_view(user, user.actions)
			list(option)
		elsif type == "client"
			user_attributes = @view.display_register
			user = Client.new(user_attributes[0], user_attributes[1], user_attributes[2])
			user.add_user(user)
			@current_user = user
			option = @view.second_view(user, user.actions)
			list(option)
		else
		 	puts "Try again"
		 	puts ""
		 	option = @view.initial_view
		 	select(option)
		end
	end
#Este metodo solo termina el metodo del metodo
	def exit
		@view.display_exit	
	end		

	def logout
		@current_user = ""
		@view.logout_method
		option = @view.initial_view
		select(option)
	end
#Aqui creamos productos para despues mostrarlos en la lista que se guardara
	def create_product
		product_attributes = @view.creando_producto
		@store.add_product(product_attributes[0], product_attributes[1])
		option = @view.second_view(@current_user, @current_user.actions)
		list(option)
	end
#Este metodo muestra la lista de los productos guardados 
	def products_list
		@view.products_list
		products = @store.products
		products.each do |product|
			puts "Name: #{product.name} ---> Price: #{product.price}"
		end
		@view.second_view(@current_user, @current_user.actions)
	end
#Solo muestra los usuarios que esten logeados o guardados en el sistema
	def users_index
		@view.users_list($users)
		@view.second_view(@current_user, @current_user.actions)
	end
end



StoreController.new
