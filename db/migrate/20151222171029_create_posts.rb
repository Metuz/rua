class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :hrs
      t.references :teacher, index: true

      t.timestamps
    end
  end
end
