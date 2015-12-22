require 'test_helper'

class SubjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @subject = Subject.new(name: "Programacion I", pin: "P1", period: "1", credits: 3.5)
  end

  test "should be valid" do
    assert @subject.valid?
  end

  test "name should be present" do
    @subject.name = ""
    assert_not @subject.valid?
  end

  test "name shouldn't not too long" do
    @subject.name = "a" * 41
    assert_not @subject.valid?
  end

  test "pin should be present" do
    @subject.pin = ""
    assert_not @subject.valid?
  end

  test "pin shouldn't not too long" do
    @subject.pin = "a" * 41
    assert_not @subject.valid?
  end

  test "period should be present" do
    @subject.period = ""
    assert_not @subject.valid?
  end

  test "period shouldn't not too long" do
    @subject.period = "a" * 41
    assert_not @subject.valid?
  end

  test "subjects's name shouldn't repeat" do
    @subject_dup = @subject.dup
    @subject_dup.save
    assert_not @subject_dup.valid?
  end
end
