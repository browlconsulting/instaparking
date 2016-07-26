class CreateSpecialFeatures < ActiveRecord::Migration
  def change
    create_table :special_features do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
