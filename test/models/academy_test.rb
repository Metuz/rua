require 'test_helper'

class AcademyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @academy = Academy.new(name: "Programacion I")
  end

  test "should be valid" do
    assert @academy.valid?
  end

  test "name should be present" do
    @academy.name = ""
    assert_not @academy.valid?
  end

  test "name shouldn't not too long" do
    @academy.name = "a" * 41
    assert_not @academy.valid?
  end

  test "academy's name shouldn't repeat" do
    @academy_dup = @academy.dup
    @academy_dup.save
    assert_not @academy_dup.valid?
  end
end
