module SessionsHelper

	def log_in(user) #Remember how brackets in Ruby are a B***h!!!!
		session[:user_id] = user.id #temporaty cookie thats been encrypted.
	end

	def current_user # Returns the current logged in user if any....
		@current_user ||= User.find_by(id: session[:user_id])
	end

	#boolean function. NICE
	def logged_in?
    	!current_user.nil? #What does it say.. If current user.nil? DOES NOT return true, then the user has logged in.. 
  	end
end
