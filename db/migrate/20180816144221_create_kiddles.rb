class CreateKiddles < ActiveRecord::Migration[5.2]
  def change
    create_table :kiddles do |t|
      t.references :neighborhoods, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
