# == Schema Information
#
# Table name: posts
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  content    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Post < ActiveRecord::Base
  attr_accessible :title, :content, :image

  validates :title, :presence => true,
	   	    :uniqueness => true
  validates :content, :presence => true

# Paperclip
has_attached_file :image,
  :styles => {
    :thumb=> "100x100#",
    :small  => "150x150>"},
    :default_url => ":rails_root/public/assets/DRZEWO.JPG",
    :url  => "/assets/posts/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/posts/:id/:style/:basename.:extension"

#validates_attachment_presence :image
validates_attachment_size :image, :less_than => 5.megabytes
validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/jpg']
end
