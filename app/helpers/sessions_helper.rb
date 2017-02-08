helpers do 

	def current_user
		return nil unless session[:user_id]
		@current_user ||= User.find(session[:user_id])
	end 

	def login
		session[:user_id] = @user.id
	end 

	def logout
		session.destroy
	end 

end 