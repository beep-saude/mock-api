class CreateAuthorizations < ActiveRecord::Migration[7.2]
  def change
    create_table :authorizations do |t|
      t.string :patient_name
      t.string :patient_cpf
      t.string :status
      t.references :exam, null: false, foreign_key: true
      t.string :authorization_id

      t.timestamps
    end
  end
end
