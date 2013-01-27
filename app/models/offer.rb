class Offer < ActiveRecord::Base
  attr_accessible :place, :skill_id, :time, :user_id

  def search
    search_condition = "%" + search + "%"
    find(:all, :conditions => ['title LIKE ? OR description LIKE ?', search_condition, search_condition])
  end

end
