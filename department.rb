require './employee'
class Department
  attr_reader :name, :employees
  def initialize(name)
    @name = name
    @employees = []
  end

  def add_employee(e)
    @employees << e
  end

  def total_salary
    @employees.reduce(0.0) {|s, e| s += e.salary }
  end
end
