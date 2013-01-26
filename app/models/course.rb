class Course < ActiveRecord::Base
  attr_accessible :category, :description, :keyword, :title
end
