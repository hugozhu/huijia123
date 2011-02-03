class CreateResponses < ActiveRecord::Migration
  def self.up
    create_table :responses do |t|
      t.integer :user_id
      t.integer :belongs_to_id
      t.text :content
      t.string :email, :limit => 100
      t.string :nickname, :limit => 50
      t.string :phone, :limit => 20
      t.timestamps
    end
    
    add_index :responses, [:belongs_to_id, :created_at], :name => "Listing" 
    add_index :responses, [:user_id, :created_at], :name => "MineResponses" 
  end

  def self.down
    remove_index :responses, :name => :MineResponses   
    remove_index :responses, :name => :Listing  
    drop_table :responses
  end
end
