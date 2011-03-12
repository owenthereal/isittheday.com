class CreateTheDays < ActiveRecord::Migration
  def self.up
    create_table :the_days do |t|
      t.string :name
      t.datetime :date

      t.timestamps
    end
  end

  def self.down
    drop_table :the_days
  end
end
