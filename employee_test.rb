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

end
