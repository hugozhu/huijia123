class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.string :path
      t.integer :belongs_to_id
      t.integer :user_id
      t.string :type
      t.timestamps
    end
    
    add_index :photos, [:belongs_to_id, :type, :created_at], :name => "LostPersonPhotos" 
  end

  def self.down
    remove_index :photos, :name => :LostPersonPhotos
    drop_table :photos
  end
end
