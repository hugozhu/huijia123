class Response < ActiveRecord::Base
  belongs_to :user  
end

class LostPersonResponse < Response
  belongs_to :lost_person, :class_name => "LostPerson", :foreign_key => "belongs_to_id" 
end

class ClueResponse < Response
  belongs_to :clue, :class_name => "Clue", :foreign_key => "belongs_to_id"  
end
