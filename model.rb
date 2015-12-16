class User

	attr_accessor :name, :mail, :password 
	$usuarios = []
	def initialize(name, mail, password)
		@name = name
		@mail = mail
		@password = password
		
	end	

	def add_user(user)
		$usuarios << user
	end



end

class Admin < User
	
end

class Vendor < User
		
end

class Client < User



end

class Store
	attr_accessor :products

	def initialize
		@products = []
	end

	def add_product(name, price)
		@products << Product.new(name, price)
	end

	# def delete_product_with_id(id)
	# 	@products.delete_at(id)
	# end

	# def delete_product_with_name(search)
	# 	delete_product_with_id(search_product)
	# end
end

class Product
	attr_reader :name, :price 
	def initialize(name, price)
		@name = name
		@price = price
	end
end

