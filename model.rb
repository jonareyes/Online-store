class Users
	attr_accessor :name, :email, :password

		def initialize
		@name = name
		@email = email
		@password = password		
	end	
end

class Cliente < Users

end

class Vendedor < Users
	
end

class Administrador < Users
	
end

class Products
	
end