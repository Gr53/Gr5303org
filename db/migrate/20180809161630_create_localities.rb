class CreateLocalities < ActiveRecord::Migration[5.2]
  def change
    create_table :localities do |t|
      t.references :cities, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
