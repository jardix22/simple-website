class Notice < ActiveRecord::Base
	belongs_to :category
	has_attached_file :image, :styles => {:medium => "400x400>", :tumb => "200x200#"}
end
