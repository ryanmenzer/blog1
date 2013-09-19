#-----------GETS

get '/posts' do
	@posts = Post.order('updated_at DESC')
	erb :all_posts
end

get '/new_post' do
	erb :new_post
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :show_post
end

#-----------POSTS

post '/new_post' do
	@post = Post.create(params[:post])
end

post '/delete_post' do
	# delete the post from db
	redirect to('/')
end