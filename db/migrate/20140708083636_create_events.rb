class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.float :lat
      t.float :lon
      t.datetime :date
      t.string :location
      t.timestamps
    end
  end
end
