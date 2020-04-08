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

# Unit tests for XeroRuby::Receipts
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Receipts' do
  before do
    # run before each test
    @instance = XeroRuby::Receipts.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Receipts' do
    it 'should create an instance of Receipts' do
      expect(@instance).to be_instance_of(XeroRuby::Receipts)
    end
  end
  describe 'test attribute "receipts"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
