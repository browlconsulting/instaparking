class CreateUserinteractions < ActiveRecord::Migration
  def change
    create_table :userinteractions do |t|
      t.text :question
      t.text :answer
      t.references :parkinglot, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
