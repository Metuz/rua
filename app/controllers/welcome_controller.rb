class WelcomeController < ApplicationController
  before_action :authenticate_user!
  def home
    @teachers_hrs = Teacher.group(:total_hrs).count
    @teachers_shift = Teacher.group(:shift).count
    @admission = Student.group(:entry).count
    @graduation = Student.group(:graduation).where("graduation is not null").count
  end
end
