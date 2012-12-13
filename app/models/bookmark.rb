class Bookmark < ActiveRecord::Base
  attr_accessible :URL, :date, :name
  
  belongs_to :user
  
  validates :URL, presence: true, :length => { :minimum => 10 } 
  validates :name, presence: true, :length => { :maximum => 100 }
end
