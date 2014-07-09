class DrugsController < ApplicationController
  def index
  end

  def create
  	@drug = Drug.new(params.require(:drug).permit(:name))
  	if @drug.save
  	  redirect_to :action => :show
  	else
  	  redirect_to :back
  	end
  end

  def show
  	@drugs = Drug.all
  end
end
