require 'minitest/autorun'
require 'minitest/pride'
require './department'

class DepartmentTest < MiniTest::Test

  def test_department_exist
    assert Department
  end

  def test_create_department_with_a_name
    d = Department.new('example')
    assert_equal 'example', d.name
  end

  def test_an_employee_can_be_added_to_a_departmen
    d = Department.new('example')
    e = Employee.new('name', 100)
    d.add_employee(e)
    assert_equal 1, d.employees.length
  end

  def test_a_department_can_calculate_the_total_salary_of_its_employees
    d = Department.new('example')
    e = Employee.new('name', 100)
    d.add_employee(e)
    assert_equal 100, d.total_salary

  end

end
