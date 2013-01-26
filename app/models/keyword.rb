# == Schema Information
#
# Table name: keywords
#
#  id         :integer          not null, primary key
#  skillId    :integer
#  keyword    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Keyword < ActiveRecord::Base
  attr_accessible :keyword, :skillId
end
