class Notice < ActiveRecord::Base
	belongs_to :category

	has_attached_file :image, :styles => {:medium => "400x400>", :tumb => "200x200#"}

	validates_attachment_presence :image
	validates_attachment_size :image, :less_than => 5.megabytes
	validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
end
