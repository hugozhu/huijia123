class CreateCities < ActiveRecord::Migration
  def self.up
    create_table :cities do |t|
      t.integer :country_id
      t.integer :state_id
      t.string :title, :limit => 50
      t.string :slug, :limit => 20
      t.timestamps
    end
  end

  def self.down
    drop_table :cities
  end
end
