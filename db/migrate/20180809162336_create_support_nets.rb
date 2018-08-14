class CreateSupportNets < ActiveRecord::Migration[5.2]
  def change
    create_table :support_nets do |t|
      t.references :nets, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
