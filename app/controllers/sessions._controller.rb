get '/login' do 
	erb :'sessions/new'
end 

post '/login' do
	@user = User.authenticate(params[:user][:email], params[:user][:password])
	if @user
		login
		redirect "/users/#{@user.id}"
	else 
		erb :'/sessions/new'
	end 
end 

delete '/logout' do 
	logout
	redirect '/'
end 