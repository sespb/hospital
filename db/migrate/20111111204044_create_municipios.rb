class CreateMunicipios < ActiveRecord::Migration
  def change
    create_table :municipios do |t|
      t.references :macro
      t.references :gerencia
      t.string :nome
      t.string :cod_geo

      t.timestamps
    end
    add_index :municipios, :macro_id
    add_index :municipios, :gerencia_id
  end
end
