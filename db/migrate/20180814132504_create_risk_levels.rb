class CreateRiskLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :risk_levels do |t|
      t.string :level

      t.timestamps
    end
  end
end
