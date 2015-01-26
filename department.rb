require './employee'
class Department
  attr_reader :name, :employees
  def initialize(name)
    @name = name
    @employees = []
  end

  def add_to_employees(*args)
    args.each do |e|
      @employees << e
    end
  end

  def total_salary
    @employees.reduce(0.0) {|s, e| s += e.salary }
  end

  def give_raise(dollar_amount)
    percent = dollar_amount / total_salary * 100
    @employees.each do |e|
      e.give_raise(percent)
    end
  end

end
