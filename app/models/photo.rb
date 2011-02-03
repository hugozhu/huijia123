class Photo < ActiveRecord::Base
  belongs_to :user  
end

class LostPersonPhoto < Photo
  belongs_to :lost_person, :class_name => "LostPerson", :foreign_key => "belongs_to_id"
end

class CluePhoto < Photo
  belongs_to :clue, :class_name => "Clue", :foreign_key => "belongs_to_id"  
end