# == Schema Information
#
# Table name: users
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  email             :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  password          :string(255)
#  confirmedPassword :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :confirmedPassword
  has_many :skills
end
