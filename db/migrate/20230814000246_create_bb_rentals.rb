class CreateBbRentals < ActiveRecord::Migration[7.0]
  def change
    create_table :bb_rentals do |t|
      t.references :bb_client, null: false, foreign_key: true
      t.references :bb_movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
