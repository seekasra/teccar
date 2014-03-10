class Device < ActiveRecord::Base

  has_many :advertisements
  has_many :bookmarks

end
