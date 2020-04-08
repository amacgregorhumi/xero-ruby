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

# Unit tests for XeroRuby::ExternalLink
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ExternalLink' do
  before do
    # run before each test
    @instance = XeroRuby::ExternalLink.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ExternalLink' do
    it 'should create an instance of ExternalLink' do
      expect(@instance).to be_instance_of(XeroRuby::ExternalLink)
    end
  end
  describe 'test attribute "link_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Facebook", "GooglePlus", "LinkedIn", "Twitter", "Website"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.link_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "url"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "description"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
