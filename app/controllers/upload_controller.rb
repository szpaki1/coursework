class UploadController < ApplicationController
def show
	@pdf = PdfFile.find(params[:id])
 	respond_to do |format|
    		format.html  # show.html.erb
    		format.json  { render :json => @pdf }
  	end
  end
  def new
	@pdf = PdfFile.new
	@title = "Create an attachment"

  	respond_to do |format|
    		format.html  # new.html.erb
    		format.json  { render :json => @pdf }
     	end
  end

  def create
        @pdf = PdfFile.new(params[:pdf])
  	respond_to do |format|
    		if @pdf.save
      			format.html  { redirect_to(@pdf,
                    		  	:notice => 'Attachment created.') }
      			format.json  { render :json => @pdf,
                    			:status => :created, :location => @pdf }
    		else
      			format.html  { render :action => "new" }
      			format.json  { render :json => @pdf.errors,
                    			:status => :unprocessable_entity }
    		end
  	end
  end
  
  def index
     	@pdfs = PdfFile.all
 
  	respond_to do |format|
    		format.html  # index.html.erb
    		format.json  { render :json => @pdfs }
  	end
  end

	def destroy
	  @pdf = PdfFile.find(params[:id])
	  @pdf.destroy
	 
	  respond_to do |format|
	    format.html { redirect_to posts_url }
	    format.json { head :ok }
	  end
	end
end
