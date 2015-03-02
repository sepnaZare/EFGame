class Game < ActiveRecord::Base
	belongs_to :creater, :class_name => "User"
  has_and_belongs_to_many :players, :class_name => "User"
end
