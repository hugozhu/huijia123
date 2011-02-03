class LostPerson < ActiveRecord::Base
  belongs_to :user
  belongs_to :category  
  has_many :lost_person_photos, :class_name => "LostPersonPhoto", :foreign_key => "belongs_to_id"
  has_many :clues
  has_many :lost_person_responses, :class_name => "LostPersonResponse", :foreign_key => "belongs_to_id" 
end
