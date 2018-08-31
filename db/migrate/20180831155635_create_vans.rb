class CreateVans < ActiveRecord::Migration[5.2]
  def change
    create_table :vans do |t|
      t.string :make
      t.string :model
      t.string :year
      t.string :color
      t.string :price

      t.timestamps
    end
  end
end
