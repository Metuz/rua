class Addindextopinteachers < ActiveRecord::Migration
  def change
    add_index :teachers, :pin, unique: true
  end
end
