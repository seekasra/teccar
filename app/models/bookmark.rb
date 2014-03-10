class Bookmark < ActiveRecord::Base

belongs_to :advertisement
belongs_to :device

end
