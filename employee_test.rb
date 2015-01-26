require 'minitest/autorun'
require 'minitest/pride'
require './employee'

class EmployeeTest < MiniTest::Test

  def test_employee_exist
    assert Employee
  end

  def test_employee_can_be_created_with_name_and_salary
    e = Employee.new('name', 100)
    assert_equal 'name', e.name
    assert_equal 100, e.salary
  end

  def test_employee_can_have_a_review_added
    e = Employee.new('Mike-ike', 1000.00)
    e.add_review('unremarkable')
    assert_equal 1, e.reviews.length
    e.add_review('unremarkable')
    assert_equal 2, e.reviews.length
  end

end
