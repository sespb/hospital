class CreateLeitos < ActiveRecord::Migration
  def change
    create_table :leitos do |t|
      t.integer :cl
      t.integer :cir
      t.integer :obs
      t.integer :ped
      t.integer :uti
      t.integer :uti_neo
      t.integer :isol
      t.references :hospital

      t.timestamps
    end
    add_index :leitos, :hospital_id
  end
end
