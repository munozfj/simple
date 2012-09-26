# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  surname             :string(255)
#  email               :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  attach_file_name    :string(255)
#  attach_content_type :string(255)
#  attach_file_size    :integer
#  attach_updated_at   :datetime
#  pic_file_name       :string(255)
#  pic_content_type    :string(255)
#  pic_file_size       :integer
#  pic_updated_at      :datetime
#

class User < ActiveRecord::Base
  attr_accessible :email, :name, :surname, :pic, :attach

  validates :name, :presence => true    
  validates :surname, :presence => true  
  validates :email, :presence => true

  has_attached_file :pic, :styles => { :medium => "300x300>", 
                                       :thumb => "50x50>" }
  has_attached_file :attach
end
