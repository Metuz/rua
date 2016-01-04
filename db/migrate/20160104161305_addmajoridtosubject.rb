class Addmajoridtosubject < ActiveRecord::Migration
  def change
    add_column :subjects, :major_id, :integer, index: true
  end
end
