class Employee
  attr_reader :name, :salary, :reviews

  def initialize(name, salary)
    @name = name
    @salary = salary
    @reviews = []
    @satisfactory_performance = true
  end

  def add_review(string)
    @reviews << string
  end

  def set_satisfactory_performance(bool)
    @satisfactory_performance = bool
  end

  def satisfactory_performance?
    @satisfactory_performance
  end

  def give_raise(percent)
    @salary += @salary * percent / 100
  end
end
