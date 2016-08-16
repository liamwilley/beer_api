class CreateBeers < ActiveRecord::Migration[5.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.integer :price
      t.integer :alcohol_percentage
      t.string :beer_type

      t.timestamps
    end
  end
end
