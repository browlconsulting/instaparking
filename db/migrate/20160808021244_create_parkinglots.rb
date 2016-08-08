class CreateParkinglots < ActiveRecord::Migration
  def change
    create_table :parkinglots do |t|
      t.string :name
      t.string :address
      t.string :addressreference
      t.decimal :pricinghour
      t.decimal :pricingday
      t.text :businesshours
      t.boolean :camera
      t.boolean :security
      t.references :user, index: true, foreign_key: true
      t.references :ubigeo, index: true, foreign_key: true
      t.references :nearby, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
