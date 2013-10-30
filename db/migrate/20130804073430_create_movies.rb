class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :year
      t.string :language

      t.timestamps
    end
  end
end
