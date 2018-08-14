class CreateIncidents < ActiveRecord::Migration[5.2]
  def change
    create_table :incidents do |t|
      t.references :users, foreign_key: true
      t.string :latitude
      t.string :longitude
      t.datetime :fecha
      t.references :incidenttypes, foreign_key: true
      t.integer :pmuerte
      t.integer :nambulancia
      t.integer :npolicia
      t.integer :prioridad
      t.integer :riesgo
      t.string :descripcion
      t.integer :gnbtnpanico
      t.binary :imagen

      t.timestamps
    end
  end
end
