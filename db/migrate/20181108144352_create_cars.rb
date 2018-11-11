class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :name
      t.integer :year
      t.string :color
      t.string :style
      t.integer :company_id

      t.timestamps
    end
  end
end
