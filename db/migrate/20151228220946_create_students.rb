class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :lname
      t.string :mname
      t.string :pin
      t.datetime :entry
      t.datetime :graduation
      t.references :master, index: true

      t.timestamps
    end
  end
end
