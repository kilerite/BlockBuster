class CreateBbClients < ActiveRecord::Migration[7.0]
  def change
    create_table :bb_clients do |t|
      t.string :avatar
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
