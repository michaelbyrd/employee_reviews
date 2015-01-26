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

  def test_performance_can_be_marked_as_satisfactory
    e = Employee.new('example', 1000.00)
    e.set_satisfactory_performance(true)
    assert_equal true, e.satisfactory_performance?
  end

  def test_can_be_given_a_raise
    e = Employee.new('example', 100.00)
    e.give_raise(50)
    assert_equal 150.00, e.salary
  end

end
