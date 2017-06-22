class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :pwd
      t.boolean :estado

      t.timestamps
    end
  end
end
