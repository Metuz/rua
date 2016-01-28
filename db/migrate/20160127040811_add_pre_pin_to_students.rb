class AddPrePinToStudents < ActiveRecord::Migration
  def change
    add_column :students, :pre_pin, :string
  end
end
