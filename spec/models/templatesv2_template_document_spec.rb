=begin
#API v1

#FormAPI is a service that helps you fill out and sign PDF templates.

OpenAPI spec version: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for FormAPI::Templatesv2TemplateDocument
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Templatesv2TemplateDocument' do
  before do
    # run before each test
    @instance = FormAPI::Templatesv2TemplateDocument.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Templatesv2TemplateDocument' do
    it 'should create an instance of Templatesv2TemplateDocument' do
      expect(@instance).to be_instance_of(FormAPI::Templatesv2TemplateDocument)
    end
  end
  describe 'test attribute "metadata"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "storage"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["cache"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.storage = value }.not_to raise_error
      # end
    end
  end

end
