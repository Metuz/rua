class Addrelationshipsubjectmaster < ActiveRecord::Migration
  def change
    add_column :subjects, :master_id, :integer, index: true
  end
end
