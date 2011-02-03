class Clue < ActiveRecord::Base
  belongs_to :user
  belongs_to :category  
  belongs_to :lost_person
  has_many :clue_photos, :class_name => "CluePhoto", :foreign_key => "belongs_to_id"
  has_many :clue_responses, :class_name => "ClueResponse", :foreign_key => "belongs_to_id"  
end
