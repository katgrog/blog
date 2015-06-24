class Post < ActiveRecord::Base
	has_many :comments

	def published?
		publication.present? and url.present? and published_at.present? 
	end
end
