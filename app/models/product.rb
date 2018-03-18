class Product < ApplicationRecord
	

	has_many :product_categories
	has_many :categories, through: :product_categories

	has_many :variants, class_name: 'ProductVariant'

	attr_accessor :cover

	after_save :save_cover_image, if: :cover

	def save_cover_image
		filename = cover.original_filename
		folder = "public/images/#{id}/cover"

		FileUtils::mkdir_p folder

		f = File.open File.join(folder, filename), "wb"
		f.write cover.read()
		f.close

		self.cover = nil
		update cover_filename: filename
	end
end
