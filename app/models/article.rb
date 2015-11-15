class Article < ActiveRecord::Base
	include AASM

	validates :title, presence: true, uniqueness: true
	validates :body, presence: true, length: { minimum: 20 }

	has_attached_file :cover, styles: { medium: "1280x720", thumb: "150x150" }
	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/

	before_save :set_visits_count

	def update_visits_count
		self.update(visits_count: self.visits_count + 1)
	end

	#SCOPES ANNOTATION
	# defining scopes | Not using them because aasm gems offers included scopes
	# def self.published
	# 	Article.where(state:"published")
	# end
	#shorter way to write scopes=
	# scope :published, -> { where(state: "published") }

	# adding the states & scopes for articles
	scope :lasts, -> { order("created_at DESC").limit(10) }
	scope :published, -> { where(state: "published") }

	aasm column: "state" do
		state :in_draft, initial: true
		state :published

		event :publish do
			transitions from: :in_draft, to: :published
		end

		event :unpublish do
			transitions from: :published, to: :in_draft
		end

	end
	
	private

	def set_visits_count
		self.visits_count ||= 0
	end

end
