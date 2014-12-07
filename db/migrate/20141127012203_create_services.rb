class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.string :service_type
      t.date :date
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
