class CreateAcademyTeachers < ActiveRecord::Migration
  def change
    create_table :academy_teachers do |t|
      t.references :academy, index: true
      t.references :teacher, index: true

      t.timestamps
    end
  end
end
