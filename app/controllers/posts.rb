#-----------GETS

get '/posts' do
	#@posts = Post.all
	erb :all_posts
end

get '/new_post' do
	erb :new_post
end


#-----------POSTS

post '/delete_post' do
	# delete the post from db
	redirect to('/')
end