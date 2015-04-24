module UsersHelper

	def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

	def logged_in?
		 current_user && current_user.id == session[:user_id]
	end

end
