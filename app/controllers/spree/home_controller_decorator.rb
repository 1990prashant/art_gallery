module Spree
	
	HomeController.class_eval do
		def index
			@products = Spree::Product.all
			@taxonomies = Spree::Taxonomy.includes(root: :children)
		end
	end

end