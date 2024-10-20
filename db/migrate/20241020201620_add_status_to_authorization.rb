class AddStatusToAuthorization < ActiveRecord::Migration[7.2]
  def change
    add_column :authorizations, :status, :string
  end
end
