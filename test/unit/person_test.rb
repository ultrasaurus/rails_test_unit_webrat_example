require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  fixtures :people
  def setup
    @valid_attrs = {:first => people(:valid_present).first, :last => people(:valid_present).last}
  end

  # Replace this with your real tests.
  test "first name is required" do
    p = Person.new()
    assert !p.valid?
    assert_equal "can't be blank", p.errors.on(:first)
  end

  test "last name is required" do
    p = Person.new(:first => "Sophie")
    assert !p.valid?
    assert_equal "can't be blank", p.errors.on(:last)
  end

  test "person record is valid with first and last name" do
    p = Person.new(@valid_attrs)
    assert p.valid?
  end

  test "person has many tasks" do
    p = Person.new(@valid_attrs)
    assert(p.tasks == [])
  end
end
