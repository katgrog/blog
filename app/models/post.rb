class Post < ActiveRecord::Base
	def published?
		publication.present? and url.present? and published_at.present? 
	end
end
