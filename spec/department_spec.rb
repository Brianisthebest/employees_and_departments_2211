require 'rspec'
require './lib/department'
require './lib/employee'

RSpec.describe Employee do
  before(:each) do
    @customer_service = Department.new("Customer Service")
    @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})
  end

  describe 'department' do
    it 'exists and has attributes' do
      expect(@customer_service).to be_a(Department)
      expect(@customer_service.name).to eq('Customer Service')
    end
  end
end