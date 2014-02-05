get '/' do
  @session = session
  @all_posts = Post.all
  erb :index
end

get '/signup' do

  erb :signup
end

post '/signup' do

end

post '/create' do
  begin
  User.create!(username: params[:username], password: params[:password])
  user_id = User.find_by(username: params[:username]).id
  session[:user_id] = user_id
  rescue => error
    "#{error}"
  end
   redirect '/'
end

post '/login' do
  user_id = User.find_by(username: params[:username]).id
  session[:user_id] = user_id
  redirect '/'
end

get '/comment/:id' do
 @session = session
 @post = Post.find(params[:id])
 @comments = Post.find(params[:id]).comments
 erb :comments
end

post '/com' do

  Comment.create(text: params[:text], user_id: session[:user_id], post_id: params[:id] )
  redirect "/comment/#{params[:id]}"
end

# get 'error/:error' do
#   erb :error
# end
get '/profile' do
  @user = User.find(session[:user_id]).username
  user_obj = User.find(session[:user_id])
  @comments = user_obj.comments
  @posts = user_obj.posts
  @session = session
  erb :profile
end

get '/submit' do
  erb :submit
end

post '/submit' do
  Post.create(user_id: session[:user_id], title: params[:title], link: params[:link])
  @session = session
  redirect '/'
end

get '/signout' do
  session.clear
  redirect '/'
end

