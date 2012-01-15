class PdfFile < ActiveRecord::Base
  attr_accessible :file

  validates :title, :presence => true,
	   	    :uniqueness => true
  validates :content, :presence => true

	# Paperclip
	has_attached_file :file,
	    :url  => "/assets/files/:id/:style/:basename.:extension",
	    :path => ":rails_root/public/files/posts/:id/:style/:basename.:extension"

	#validates_attachment_presence :image
	validates_attachment_size :file, :less_than => 5.megabytes
	validates_attachment_content_type :file, :content_type => ['application/pdf']
end
