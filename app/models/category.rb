class Category < ActiveRecord::Base
  acts_as_list
  acts_as_tree :order => "position"

  has_many :lost_people
  has_many :clues  
end
