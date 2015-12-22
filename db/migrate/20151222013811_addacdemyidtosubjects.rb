class Addacdemyidtosubjects < ActiveRecord::Migration
  def change
    add_column :subjects, :academy_id, :integer, index: true
  end
end
