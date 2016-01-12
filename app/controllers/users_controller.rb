require 'date'
class UsersController < ApplicationController
	def index
		@users = User.all
		respond_to do |format|
			format.any { render :json => @users }
		end
	end

    def show
    	@users = User.order(:created_at)
		respond_to do |format|
			format.any { render :json => @users }
		end
    end
end
