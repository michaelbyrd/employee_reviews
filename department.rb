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
end
