class Post < ActiveRecord::Base
	validates :title, presence: true
	validates :body, presence: true

	has_many :posts_tags
	has_many :tags, through: :posts_tags

	def show_tags
		tag_names = []
		self.tags.each { |tag| tag_names << tag.name }
		tag_names.join(", ")
	end
end
