class CreateUbigeos < ActiveRecord::Migration
  def change
    create_table :ubigeos do |t|
      t.string :district
      t.string :department

      t.timestamps null: false
    end
  end
end
