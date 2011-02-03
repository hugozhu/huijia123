class CreateCountries < ActiveRecord::Migration
  def self.up
    create_table :countries do |t|
      t.string :title, :limit => 50
      t.string :slug, :limit => 20
      t.timestamps
    end
  end

  def self.down
    drop_table :countries
  end
end
