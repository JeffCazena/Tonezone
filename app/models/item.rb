class Item < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #attr_accessible :name, :description, :itempic


    belongs_to :user
  	mount_uploader :itempic, ItempicUploader
end
