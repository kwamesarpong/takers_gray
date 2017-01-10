class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper #Putting it here makes it accessible across all Controllers in our app. 
  						 #After all this is the base of all controllers
end
