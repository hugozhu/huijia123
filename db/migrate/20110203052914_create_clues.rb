class CreateClues < ActiveRecord::Migration
  def self.up
    create_table :clues do |t|
      t.integer :user_id
      t.integer :category_id
      t.integer :lost_person_id
      t.string :title, :limit => 255
      t.text :content
      t.integer :gender, :default => 2
      t.datetime :found_at
      t.integer :age, :default => 0
      t.integer :city_id
      t.string :where_found, :limit => 255
      t.float :longitude, :default => 0.0
      t.float :latitude, :default => 0.0
      t.string :photo
      t.string :contact, :limit => 20
      t.string :contact_phone, :limit => 20
      t.integer :responses_count, :default => 0
      t.timestamps
    end
    
    add_index :clues, [:category_id, :city_id, :title, :created_at], :name => "Listing" 
    add_index :clues, [:lost_person_id, :created_at], :name => "LostPersonClue"   
  end

  def self.down
    remove_index :clues, :name => :LostPersonClue 
    remove_index :clues, :name => :Listing
    drop_table :clues
  end
end
