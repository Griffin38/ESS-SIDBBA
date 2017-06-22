class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true
      t.string :Sensor
      t.string :Value
      t.string :Latitude
      t.string :Longitude
      t.string :Date
      t.string :Time

      t.timestamps
    end
  end
end
