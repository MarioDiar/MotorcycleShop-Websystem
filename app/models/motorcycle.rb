class Motorcycle < ActiveRecord::Base
	#validations for motorcycles
	validates :model, presence: true, uniqueness: true

	# validating pdf file
	has_attached_file :pdf
	validates_attachment :pdf, content_type: { content_type: "application/pdf" }


	#attached images to motorcycle, setting the sizes
	has_attached_file :image, styles: {normal: "675x507"}
	has_attached_file :imagetwo
	has_attached_file :imagethree
	# 900x676

	validates_attachment_presence :image

	
	#validating the type of file of the image
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	validates_attachment_content_type :imagetwo, content_type: /\Aimage\/.*\Z/
	validates_attachment_content_type :imagethree, content_type: /\Aimage\/.*\Z/

end
