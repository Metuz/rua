class AcademyTeacher < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :academy
end
