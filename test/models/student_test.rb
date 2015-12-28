require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @student = Student.new(name: "Alejandro", lname: "Hernandez", mname: "Romero", pin: "2009602938")
  end

  test "should be valid" do
    assert @student.valid?
  end

  test "name should be present" do
    @student.name = ""
    assert_not @student.valid?
  end

  test "last name should be present" do
    @student.lname = ""
    assert_not @student.valid?
  end

  test "mature name should be present" do
    @student.mname = ""
    assert_not @student.valid?
  end

  test "degree should be present" do
    @student.degree = ""
    assert_not @student.valid?
  end

  test "pin should be present" do
    @student.pin = ""
    assert_not @student.valid?
  end

end
