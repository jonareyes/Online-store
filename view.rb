#Se crea la vista poder ser usada en el controlador 
#y asi mostrar lo que el usuario puede ver y al mismo tiempo crear
#seleccionar, pero no le permite tener acceso a cualquier parte del programa.
class View

	def initial_view
		puts "Welcome to the online STORE: Crea tu playera, (www.your-own-style.com)"
		puts "----------------------------------------------------------------------"
		puts "Select option number:\n 1.-Login.\n 2.-Register.\n 3.-Exit.\n"
		puts ""
		text = gets.chomp 
	end
#Se crea el metodo login el cual se le mostra al usuario para poder accesar al programa 
	def display_login
		username = []
		puts "Mail:"
		mail = gets.chomp
		username << mail
		puts "Password:"
		password = gets.chomp
		username << password
		username
	end
#Con este metodo el usuario crea un registro para poder tener acceso 
	def display_register
		all_data = []
		puts "Puts your name please"
		text = gets.chomp
		all_data << text
		puts "Puts your mail please"
		text = gets.chomp
		all_data << text	
		puts "Puts your password"
		text = gets.chomp 
		all_data << text
		puts "Your account was created"
		all_data
	end
#En esta segunda vista podemos llamar el segundo display para poder interactuar con el programa
#Pero esta creado para poder saber que usuario es el que esta dentro y asi mandarle las opciones 
#que solo puede usar.	
	def second_view(user, options_array)
		puts "Welcome #{user.name}. Your type is #{user.class}"
		puts "----------------------------------------------------------------------"
		puts "Choose your option: "
		options_array.each do |option|
			puts "#{option}"
			puts ""
		end
		text = gets.chomp
	end

	def display_exit	
		puts "----------------------------------------------------------------------"
		puts "END PROGAM!!!!!!"	
	end


	def logout_method
		puts "You're leaving this program, see you later"
		puts ""
	end
#Aqui el usuario o en este caso el admin y vendor pueden crear productos 
	def creando_producto
		productos = []
		puts "Create a new product"
		text = gets.chomp
		productos << text
		puts "Now set price"
		text = gets.chomp
		productos << text
		puts "Product created"
		productos
	end
#En este metodo todos los usuarios registrado pueden tener acceso a la lista de productos
	def products_list
		puts "This is the products list"
		puts "-----------------------------------------------------------------------"
	end

	def users_list(users)
		puts "INSIDE USERS_LIST"
		puts "This is the users list"
		puts "-----------------------------------------------------------------------"
		users.each do |user|
			puts "name --------> #{user.name},  mail --------> #{user.mail},  type --------> #{user.class}"
		end
	end

	def type_client
		puts "Choose your type [admin, vendor, client]"
		type = gets.chomp	
	end
end