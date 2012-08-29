class UserController < ApplicationController
  def index
    @user= User.all
  end

  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @userlog }
    end
  end

end
