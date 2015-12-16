class View

	def initial_view
		puts "Welcome to the online STORE: Crea tu playera, (www.your-own-style.com)"
		puts "----------------------------------------------------------------------"
		puts "Select option number:\n 1.Login.\n 2.Register.\n 3.Exit.\n"
		puts ""
		text = gets.chomp 
	end

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
		puts "Your account it was create"
		all_data
	end
	
	def second_view
		puts "Welcome Your type is "
		puts "----------------------------------------------------------------------"
		puts "Select option number:\n 1.Logout.\n 2.Products list.\n 3.Create product.\n 4.Users index"
		puts ""
		text = gets.chomp
	end

	def display_exit	
		puts "----------------------------------------------------------------------"
		puts "END PROGAM!!!!!!"	
	end


	def logout_method
		puts "You leaved this program, see you later"
	end

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

	def products_list
		puts "This is the products list"
		puts "-----------------------------------------------------------------------"
	end

	def users_list(usuarios)
		puts "This is the users list"
		puts "-----------------------------------------------------------------------"
		usuarios.each do |user|
		puts "name --------> #{user.name}, mail --------> #{user.mail}."
		puts "If you want "
		end
	end

	def type_client
		puts "Choose your type [admin, vendor, client]"
		type = gets.chomp
		
	end
end