class CreateLostPeople < ActiveRecord::Migration
  def self.up
    create_table :lost_people do |t|
      t.integer :user_id
      t.string :full_name, :limit => 20
      t.string :native_place, :limit => 20
      t.string :title, :limit => 255
      t.text :content
      t.datetime :birthday
      t.datetime :lost_at
      t.string :where_lost, :limit => 255
      t.integer :gender, :default => 2    # 2:未知, 0:男, 1:女
      t.integer :age, :default => 0
      t.integer :category_id
      t.integer :city_id
      t.string :photo
      t.string :contact, :limit => 20
      t.string :contact_phone, :limit => 20
      t.integer :clues_count, :default => 0
      t.integer :responses_count, :default => 0
      t.timestamps
    end

    add_index :lost_people, [:category_id, :full_name, :created_at], :name => "SearchFullName"
    add_index :lost_people, [:category_id, :city_id, :title, :created_at], :name => "Listing"   
  end

  def self.down
    remove_index :lost_people, :name => :SearchFullName 
    remove_index :lost_people, :name => :Listing 
    drop_table :lost_people
  end
end
