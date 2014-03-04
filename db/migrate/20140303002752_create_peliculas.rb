class CreatePeliculas < ActiveRecord::Migration
  def change
    create_table :peliculas do |t|
      t.string :cnombre
      t.string :cgenero
      t.string :cyear
      t.string :cclasif
      t.string :cdirector
      t.string :cproductora
      t.string :cactor01
      t.string :cactor02
      t.string :cactor03
      t.string :cactor04
      t.string :cactor05
      t.string :cactor06
      t.string :cactor07
      t.string :cactor08
      t.string :cactor09
      t.string :cactor10
      t.string :cubicacion
      t.string :ccaratula
      t.text :csinopcis

      t.timestamps
    end
  end
end
