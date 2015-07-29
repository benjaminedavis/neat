class CreateWhiskeys < ActiveRecord::Migration
  def change
    create_table :whiskeys do |t|
      t.string :name
      t.string :region
      t.string :string
      t.string :country
      t.string :type
      t.string :malt
      t.string :string
      t.string :age
      t.string :integer
      t.integer :price
      t.string :abv
      t.string :float
      t.string :pic1
      t.references :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
