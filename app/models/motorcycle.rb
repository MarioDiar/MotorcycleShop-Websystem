class Motorcycle < ActiveRecord::Base
	#validations for motorcycles
	validates :model, presence: true, uniqueness: true

	# validating pdf file
	has_attached_file :pdf
	validates_attachment :pdf, content_type: { content_type: "application/pdf" }


	#attached images to motorcycle, setting the sizes
	has_attached_file :image, styles: {small: "300x300",medium: "800x400"}
	has_attached_file :imagetwo, styles: {small: "300x300",medium: "800x400"}
	has_attached_file :imagethree, styles: {small: "300x300",medium: "800x400"}

	validates_attachment_presence :image

	
	#validating the type of file of the image
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	validates_attachment_content_type :imagetwo, content_type: /\Aimage\/.*\Z/
	validates_attachment_content_type :imagethree, content_type: /\Aimage\/.*\Z/

end
