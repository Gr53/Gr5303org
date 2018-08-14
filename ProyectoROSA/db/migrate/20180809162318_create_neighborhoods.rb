class CreateNeighborhoods < ActiveRecord::Migration[5.2]
  def change
    create_table :neighborhoods do |t|
      t.references :localitys, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
