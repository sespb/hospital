class AddColumnNomeToHospital < ActiveRecord::Migration
  def up
    add_column :hospitais, :nome, :string
  end
  def down
    remove_column :hospitais, :nome
  end
end
