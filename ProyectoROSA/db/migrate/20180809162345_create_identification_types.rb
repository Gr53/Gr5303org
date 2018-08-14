class CreateIdentificationTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :identification_types do |t|
      t.string :identificationtype

      t.timestamps
    end
  end
end
