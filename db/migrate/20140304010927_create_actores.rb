class CreateActores < ActiveRecord::Migration
  def change
    create_table :actores do |t|
      t.string :cNombre
      t.string :cApellido
      t.date :dNacim
      t.string :cPais
      t.string :cFoto
      t.string :cWeb
      t.string :cTwetter
      t.string :cFacebook
      t.string :sSexo
      t.text :cComenta

      t.timestamps
    end
  end
end
