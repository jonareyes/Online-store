class View

	def display_login
		mail = []
		password = []
		puts "Mail:"
		text = gets.chomp
			mail << text
		puts "Password:"
		text = gets.chomp
			password << text
		mail
		password				
	end

	def display_register
		name = []
		mail = []
		password = []
		if name.empty?
		puts "Puts your name please"
			text = gets.chomp
				name << text
		puts "Puts your mail please"
			text = gets.chomp
			mail << text	
		puts "Puts your password"
			text = gets.chomp 
			password << text
		puts "Your account it was create"
		end
		name
		mail
		password					
	end
	
	def display_exit
		puts "----------------------------------------------------------------------"
		puts "END PROGAM!!!!!!"	
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

	def logout_method

		
	end
end