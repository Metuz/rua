class Addtotalhrstoteachers < ActiveRecord::Migration
  def change
    add_column :teachers, :total_hrs, :integer
  end
end
