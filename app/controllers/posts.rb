#-----------GETS

get '/posts' do
	@posts = Post.order('updated_at DESC')
	erb :all_posts
end

get '/new_post' do
	erb :new_post
end

get '/posts/:id/edit' do
	@post = Post.find(params[:id])
	erb :new_post
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :show_post
end

#-----------POSTS

post '/new_post' do
	# puts params.inspect
	tags = params[:tags].gsub(/\s/, "").split(",").map {|tag| Tag.find_or_create_by_name(tag)}
	@post = Post.create(title: params[:title], body: params[:body], tags: tags)
	if @post.valid?	
		redirect to('/posts')
	else
		erb :new_post
	end
end

post '/delete_post/:id' do
	post = Post.find(params[:id])
	post.destroy
	redirect to('/')
end