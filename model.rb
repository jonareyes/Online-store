#Se crea la clase user para poder tener acceso y guardar el usuario 
#Con esto podemos guardar usuarios nuevos y poder llamarlos en el controlador 
class User

	attr_accessor :name, :mail, :password 
	$users = []
	def initialize(name, mail, password)
		@name = name
		@mail = mail
		@password = password
		
	end	

	def add_user(user)
		$users << user
	end

	def all_actions
		 ["1.-Logout", "2.-Products_list", "3.-Create_product", "4.-Users_index"]	
	end
end
#Se crean las clases(admin, vendor y client.) para poder heredar parte del metodo 
#padre que es el de user y poder mandarle algunas acciones especificas
class Admin < User
	def actions
		all_actions		
	end
end

class Vendor < User
	def actions
		all_actions[0..2]
	end
end

class Client < User
	def actions
		all_actions[0..1]	
	end
end
#Creamos la clase store para poder crear y almacenar productos 
#los cuales vamos a llamar en la controlador para poder acceder a ellos 
class Store
	attr_accessor :products

	def initialize
		@products = []
	end

	def add_product(name, price)
		@products << Product.new(name, price)
	end
end
#En esta clase le damos nombre al producto y creamos un accesor  para poder usarlos en cualquier clase
#parte del programa
class Product
	attr_reader :name, :price 
	def initialize(name, price)
		@name = name
		@price = price
	end
end

