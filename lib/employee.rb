class Employee
  attr_reader :name,
              :age,
              :salary

  def initialize(details)
    @name = details[:name]
    @age = details[:age]
    @salary = details[:salary].delete_prefix('$').to_i
  end

  def give_raise(increase)
    @salary += increase
    self
  end
end