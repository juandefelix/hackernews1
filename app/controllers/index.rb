get '/' do
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
 @post = Post.find(params[:id])
 @comments = Post.find(params[:id]).comments
 erb :comments
end

post '/com' do
puts params
  Comment.create(text: params[:text], user_id: session[:user_id], post_id: params[:id] )
  redirect "/comment/#{params[:id]}"
end

# get 'error/:error' do
#   erb :error
# end
