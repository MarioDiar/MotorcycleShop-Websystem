class Cover < ActiveRecord::Base
	#validations for cover
	validates :name, presence: true
	has_attached_file :image, styles: {small: "500x300"}
	validates_attachment_presence :image
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
