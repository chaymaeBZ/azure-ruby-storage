class CreateStorages < ActiveRecord::Migration[5.0]
  def change
    create_table :storages do |t|
      t.string :encrypted_name
      t.string :encrypted_key

      t.timestamps
    end
  end
end
