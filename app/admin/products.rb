ActiveAdmin.register Product do

    permit_params :title, :price, :description, :cover, :category_ids => []

  	form html: { multipart: true } do |f|

	  	f.inputs "Product | New" do
	    	f.input :title
	    	f.input :categories, as: :select, :collection => Category.all.collect {|category| [category.title, category.id] }
	    	f.input :price
	    	f.input :description
	    	f.input :cover, as: :file
  	
  		end
  	f.actions
 	end
end
