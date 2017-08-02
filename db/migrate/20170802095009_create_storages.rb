class CreateStorages < ActiveRecord::Migration[5.0]
  def change
    create_table :storages do |t|
      t.string :name
      t.string :key

      t.timestamps
    end
  end
end
