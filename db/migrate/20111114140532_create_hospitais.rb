class CreateHospitais < ActiveRecord::Migration
  def change
    create_table :hospitais do |t|
      t.references :municipio
      t.string :situacao
      t.string :cnes
      t.string :condicao_funcionamento
      t.string :ativ_adm
      t.integer :medicos
      t.integer :populacao

      t.timestamps
    end
    add_index :hospitais, :municipio_id
  end
end
