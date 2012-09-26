class User < ActiveRecord::Base
  attr_accessible :email, :name, :surname, :pic, :attach

  validates :name, :presence => true    
  validates :surname, :presence => true  
  validates :email, :presence => true

  has_attached_file :pic, :styles => { :medium => "300x300>", 
                                       :thumb => "50x50>" }
  has_attached_file :attach
end
