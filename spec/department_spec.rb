require 'rspec'
require './lib/department'
require './lib/employee'

RSpec.describe Employee do
  before(:each) do
    @customer_service = Department.new("Customer Service")
    @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})
    @aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"}) 
  end

  describe 'department' do
    it 'exists and has attributes' do
      expect(@customer_service).to be_a(Department)
      expect(@customer_service.name).to eq('Customer Service')
      expect(@customer_service.employees).to eq([])
      expect(@customer_service.expenses).to eq(0)
    end

    it 'can add employees' do
      @customer_service.hire(@bobbi)
      @customer_service.hire(@aaron)

      expect(@customer_service.employees).to eq([@bobbi, @aaron])
    end

    it 'can add expenses' do
      @customer_service.expense(100)
      @customer_service.expense(25)

      expect(@customer_service.expenses).to eq(125)
    end
  end
end