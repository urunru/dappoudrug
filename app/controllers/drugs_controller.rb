class DrugsController < ApplicationController
  def index
  end

  def create
  	drugs = params[:drug]
  	render :text => drugs[:name]
  end

  def show
  end
end
