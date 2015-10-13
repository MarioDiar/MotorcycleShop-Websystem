class Article < ActiveRecord::Base

	validates :title, presence: true, uniqueness: true
	validates :body, presence: true, length: { minimum: 20 }

	has_attached_file :cover, styles: { medium: "1280x720", thumb: "800x600" }
	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/

	before_save :set_visits_count

	def update_visits_count
		self.update(visits_count: self.visits_count + 1)
	end
	
	private

	def set_visits_count
		self.visits_count ||= 0
	end

end
