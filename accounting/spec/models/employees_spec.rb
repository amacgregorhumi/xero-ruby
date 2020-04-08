=begin
#Accounting API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.0.8
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for XeroRuby::Employees
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Employees' do
  before do
    # run before each test
    @instance = XeroRuby::Employees.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Employees' do
    it 'should create an instance of Employees' do
      expect(@instance).to be_instance_of(XeroRuby::Employees)
    end
  end
  describe 'test attribute "employees"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
