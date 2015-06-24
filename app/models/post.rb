class Post < ActiveRecord::Base
	has_many :comments

	validates :body, presence: true
	validates :title, presence: true

	before_create :sanitize_author_names

	def self.from_param(param)
		where(author: NameCase(param))
	end

	def published?
		publication.present? and url.present? and published_at.present? 
	end

	def author_name

	end

	def sanitize_author_names
		self.author = author.strip!
	end
end
