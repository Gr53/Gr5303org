class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :names
      t.string :surnames
      t.references :identification_types, foreign_key: true
      t.string :identificationnumber
      t.string :cellphonenumber
      t.string :username
      t.string :password
      t.string :password_digest
      t.references :support_nets, foreign_key: true
      t.integer :active
      t.integer :locked
      t.binary :photo

      t.timestamps
    end
  end
end
