class CreateIncidentTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :incident_types do |t|
      t.string :name
      t.references :risk_levels, foreign_key: true

      t.timestamps
    end
  end
end
