require 'test_helper'

class TeacherTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @teacher = Teacher.new(name: "Alejandro", lname: "Hernandez", mname: "Romero", degree: "Ing. en Informatica", shift: "Matutino", dictamen: "E66", age: 15, pin: "153")
  end

  test "should be valid" do
    assert @teacher.valid?
  end

  test "name should be present" do
    @teacher.name = ""
    assert_not @teacher.valid?
  end

  test "last name should be present" do
    @teacher.lname = ""
    assert_not @teacher.valid?
  end

  test "mature name should be present" do
    @teacher.mname = ""
    assert_not @teacher.valid?
  end

  test "degree should be present" do
    @teacher.degree = ""
    assert_not @teacher.valid?
  end

  test "shift should be present" do
    @teacher.shift = ""
    assert_not @teacher.valid?
  end

  test "dictamen should be present" do
    @teacher.dictamne = ""
    assert_not @teacher.valid?
  end

  test "age should be present" do
    @teacher.age = ""
    assert_not @teacher.valid?
  end

  test "pin should be present" do
    @teacher.pin = ""
    assert_not @teacher.valid?
  end

  test "teacher's pin shouldn't repeat" do
    @teacher_dup = @teacher.dup
    @teacher_dup.save
    assert_not @teacher_dup.valid?
  end
end
