class CreateStates < ActiveRecord::Migration
  def self.up
    create_table :states do |t|
      t.string :title, :limit => 50
      t.integer :country_id
      t.string :slug, :limit => 20
      t.timestamps
    end
  end

  def self.down
    drop_table :states
  end
end
