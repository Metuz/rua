class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :lname
      t.string :mname
      t.string :pin
      t.string :degree
      t.string :master
      t.string :dictamen
      t.string :shift
      t.integer :age

      t.timestamps
    end
  end
end
