class CreateCows < ActiveRecord::Migration[7.0]
  def change
    create_table :cows do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.text :hobby
      t.text :image

      t.timestamps
    end
  end
end
