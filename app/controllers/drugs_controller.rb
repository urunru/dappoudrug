class DrugsController < ApplicationController
  def create
  	@drug = Drug.new(params.require(:drug).permit(:name))
  	if @drug.save
  	  redirect_to :action => :show
  	else
  	  redirect_to :back
  	end
  end

  def vote
    Drug.find(params[:id]).increment!(:score)
    redirect_to :action => :show
  end
end
