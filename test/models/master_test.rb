require 'test_helper'

class MasterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @master = Master.new(name: "Inegenieria en Informatica")
  end

  test "should be valid" do
    assert @master.valid?
  end

  test "name should be present" do
    @master.name = ""
    assert_not @master.valid?
  end

  test "name shouldn't not too long" do
    @master.name = "a" * 41
    assert_not @master.valid?
  end

  test "master's name shouldn't repeat" do
    @master_dup = @master.dup
    @master_dup.save
    assert_not @master_dup.valid?
  end
end
