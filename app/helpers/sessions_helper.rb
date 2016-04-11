module SessionsHelper

	def logged_in?
		session[:logged_in]
	end

	def log_in
		session[:logged_in] = true
	end

	def log_out
		session.delete(:logged_in)
	end
end
