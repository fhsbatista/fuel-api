class CreateRefuelings < ActiveRecord::Migration[7.0]
  def change
    create_table :refuelings do |t|
      t.references :destination, null: false, foreign_key: true
      t.references :vehicle, null: false, foreign_key: true
      t.decimal :quantity
      t.datetime :date
      t.decimal :hodometer

      t.timestamps
    end
  end
end
