module UsersHelper

	def logged_in?
		 current_user && current_user.id == session[:user_id]
	end

end
