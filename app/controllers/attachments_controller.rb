class AttachmentsController < ApplicationController
def show
	@attachment = Attachment.find(params[:id])
 	respond_to do |format|
    		format.html  # show.html.erb
    		format.json  { render :json => @attachment }
  	end
  end
  def new
	@attachment = Attachment.new
	@title = "Create an attachment"

  	respond_to do |format|
    		format.html  # new.html.erb
    		format.json  { render :json => @attachment }
     	end
  end

  def create
        @attachment = Attachment.new(params[:attachment])
  	respond_to do |format|
    		if @attachment.save
      			format.html  { redirect_to(@attachment,
                    		  	:notice => 'Attachment created.') }
      			format.json  { render :json => @attachment,
                    			:status => :created, :location => @attachment }
    		else
      			format.html  { render :action => "new" }
      			format.json  { render :json => @attachment.errors,
                    			:status => :unprocessable_entity }
    		end
  	end
  end
  
  def index
     	@attachments = Attachment.all
 
  	respond_to do |format|
    		format.html  # index.html.erb
    		format.json  { render :json => @attachments }
  	end
  end

	def destroy
	  @attachment = Attachment.find(params[:id])
	  @attachment.destroy
	 
	  respond_to do |format|
	    format.html { redirect_to attachments_url }
	    format.json { head :ok }
	  end
	end
end
