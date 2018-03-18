ActiveAdmin.register Product do

permit_params :title, :categories_id, :price, :description, :cover

  	form html: { multipart: true } do |f|

	  	f.inputs "Product | New" do
	    	f.input :title
	    	f.input :categories_id, as: :select, :collection => Category.all.collect {|category| [category.title, category.id] }
	    	f.input :price
	    	f.input :description
	    	f.input :cover, as: :file
  	
  		end
  	f.actions
 	end
end
