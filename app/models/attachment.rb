class Attachment < ActiveRecord::Base
  attr_accessible :file, :file_file_name


	# Paperclip
	has_attached_file :file,
	    :url  => "/assets/files/:id/:style/:basename.:extension",
	    :path => ":rails_root/public/assets/files/:id/:style/:basename.:extension"

	validates_attachment_presence :file
	validates_attachment_size :file, :less_than => 5.megabytes
	validates_attachment_content_type :file, :content_type => ['application/pdf']

end
