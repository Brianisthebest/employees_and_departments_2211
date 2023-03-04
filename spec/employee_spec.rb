require 'rspec'
require './lib/employee'

RSpec.describe Employee do
  before(:each) do
    @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})
  end

  describe 'employee' do
    it 'exists and has attributes' do
      expect(@bobbi).to be_a(Employee)
      expect(@bobbi.name).to eq('Bobbi Jaeger')
      expect(@bobbi.age).to eq('30')
      expect(@bobbi.salary).to eq(100000)
    end

    it 'can increase salary' do
      expect(@bobbi.give_raise(5000)).to eq(@bobbi)
      expect(@bobbi.salary).to eq(105000)
    end
  end
end