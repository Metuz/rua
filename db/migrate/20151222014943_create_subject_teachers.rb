class CreateSubjectTeachers < ActiveRecord::Migration
  def change
    create_table :subject_teachers do |t|
      t.references :subject, index: true
      t.references :teacher, index: true

      t.timestamps
    end
  end
end
