get '/sessions/new' do 
	erb :'sessions/new'
end 

post '/sessions' do
	@user = User.authenticate(params[:user][:email], [:user][:password])
	if @user
		login
		redirect "/users/#{@user.id}"
	else 
		erb :'/sessions/new'
	end 
end 

delete '/sessions' do 
	logout
	redirect '/'
end 