class CreateCloudAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :cloud_accounts do |t|

      t.timestamps
    end
  end
end
