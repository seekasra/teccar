class Advertisement < ActiveRecord::Base

  belongs_to :device
  has_many :photos
  has_many :comments
  has_many :bookmarks

end
