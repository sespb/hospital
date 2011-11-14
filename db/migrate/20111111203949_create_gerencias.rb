class CreateGerencias < ActiveRecord::Migration
  def change
    create_table :gerencias do |t|
      t.string :codigo

      t.timestamps
    end
  end
end
