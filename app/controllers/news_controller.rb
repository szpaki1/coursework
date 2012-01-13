class NewsController < ApplicationController
  def new
	@title = "Create a New"
  end

  def show
	@new = New.find(params[:id])
  end

end
