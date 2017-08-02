class AddUserToCloudAccount < ActiveRecord::Migration[5.0]
  def change
    add_reference :cloud_accounts, :user, foreign_key: true
  end
end
