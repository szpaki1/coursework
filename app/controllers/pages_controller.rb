class PagesController < ApplicationController
  def home
	@title = "Home"
  end

  def blog
	@title = "Blog"
  end

  def publication
	@title = "Publications"
  end

  def new
	@title = "News"
  end

  def pdf
	@title = "PDF"
  end

end
