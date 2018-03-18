class ProductsController < InheritedResources::Base

	def index
		@category = Category.find(params[:category_id])
		@products = @category.products.includes(:variants).order(:title)

	end 

	def show
		@products = Product.find(params[:id])

	end


	
end

