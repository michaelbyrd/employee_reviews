class Employee
  attr_reader :name, :salary, :reviews

  def initialize(name, salary)
    @name = name
    @salary = salary
    @reviews = []
  end

  def add_review(string)
    @reviews << string
  end
end
