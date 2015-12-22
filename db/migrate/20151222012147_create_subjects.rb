class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :pin
      t.string :credits
      t.float :period

      t.timestamps
    end
  end
end
