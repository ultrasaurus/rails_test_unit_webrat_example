class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :first, :limit => 40
      t.string :last, :limit => 40
      t.boolean :present

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end