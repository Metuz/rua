class Addindextomastername < ActiveRecord::Migration
  def change
    add_index :majors, :name, unique: true
  end
end
