class Bookmark < ActiveRecord::Base
  attr_accessible :URL, :date, :name
  validates :URL, presence: true, :length => { :minimum => 10 } 
  validates :name, presence: true, :length => { :maximum => 100 }
end
