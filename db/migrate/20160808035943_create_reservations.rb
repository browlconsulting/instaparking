class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :datestart
      t.time :timestart
      t.date :dateend
      t.time :timeend
      t.boolean :byhour
      t.boolean :byday
      t.references :parkinglot, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
