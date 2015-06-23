class Motorcycle < ActiveRecord::Base

	validates :model, presence: true, uniqueness: true
	validates :image, presence: true
	validates :imagetwo, presence: true
	validates :imagethree, presence: true
	validates :descriptionshort, presence: true, length: { maximum: 125 }

	has_attached_file :image, styles: {small: "300x300",medium: "800x400"}
	has_attached_file :imagetwo, styles: {small: "300x300",medium: "800x400"}
	has_attached_file :imagethree, styles: {small: "300x300",medium: "800x400"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	validates_attachment_content_type :imagetwo, content_type: /\Aimage\/.*\Z/
	validates_attachment_content_type :imagethree, content_type: /\Aimage\/.*\Z/
end
