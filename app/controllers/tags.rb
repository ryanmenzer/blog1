get '/show_by_tags' do
	@tags = Tag.includes(:posts)
	erb :show_by_tags
end