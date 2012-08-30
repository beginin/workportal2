class CompsController < ApplicationController
  def index
    @comps = Comp.find(:all, :order => "name ASC")
  end

  def show
    @comp = Comp.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @userlog }
   end
  end
end
