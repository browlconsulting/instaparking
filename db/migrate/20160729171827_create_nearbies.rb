class CreateNearbies < ActiveRecord::Migration
  def change
    create_table :nearbies do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
