class AddCloudAccountToStorage < ActiveRecord::Migration[5.0]
  def change
    add_reference :storages, :cloud_account, foreign_key: true
  end
end
