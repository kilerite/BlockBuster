class CreateBbMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :bb_movies do |t|
      t.string :image
      t.string :name

      t.timestamps
    end
  end
end
