class CreateIncidentTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :incident_types do |t|
      t.string :name
      t.references :risklevels, foreign_key: true

      t.timestamps
    end
  end
end
