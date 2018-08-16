class CreateNets < ActiveRecord::Migration[5.2]
  def change
    create_table :nets do |t|
      t.references :neighborhoods, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
