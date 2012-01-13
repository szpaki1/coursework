# == Schema Information
#
# Table name: news
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  content    :string(255)
#  photo      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class New < ActiveRecord::Base
  attr_accessible :title, :content, :photo

  validates :title, :presence => true,
	   	    :uniqueness => true
  validates :content, :presence => true
end
