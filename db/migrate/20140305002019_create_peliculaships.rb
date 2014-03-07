class CreatePeliculaships < ActiveRecord::Migration
  def change
    create_table :peliculaships do |t|
      t.belongs_to :Pelicula
      t.belongs_to :Protag
      t.belongs_to :Reparto

      t.timestamps
    end
    add_index :peliculaships, :pelicula_id
    add_index :peliculaships, :protag_id
    add_index :peliculaships, :reparto_id
  end
end
