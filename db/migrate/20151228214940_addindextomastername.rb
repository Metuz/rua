class Addindextomastername < ActiveRecord::Migration
  def change
    add_index :masters, :name, unique: true
  end
end
