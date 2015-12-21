class Addindextoacademy < ActiveRecord::Migration
  def change
    add_index :academies, :name, unique: true
  end
end
