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

class Store
	@products = []

	def initialize(products)
		@products = products
	end

	def add_product(name, price, model)
		@products << Product.new(name, price, model)
	end

	def search_product_by(field, search)
		@products.find_index {|product| product.field == search.field}
	end

	def delete_product_with_id(id)
		@products.delete_at(id)
	end

	def delete_product_with_name(search)
		delete_product_with_id(search_product)
	end
end

class Product
	attr_reader :name, :price, :model 
	def initialize(name, price, model)
		@name = name
		@price = price
		@model = model
	end
end

Product.new("Player Gris", 80.00, "")