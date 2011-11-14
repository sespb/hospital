class CreateMacros < ActiveRecord::Migration
  def change
    create_table :macros do |t|
      t.string :codigo

      t.timestamps
    end
  end
end
