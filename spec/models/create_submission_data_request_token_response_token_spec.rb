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

# Unit tests for FormAPI::CreateSubmissionDataRequestTokenResponseToken
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CreateSubmissionDataRequestTokenResponseToken' do
  before do
    # run before each test
    @instance = FormAPI::CreateSubmissionDataRequestTokenResponseToken.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CreateSubmissionDataRequestTokenResponseToken' do
    it 'should create an instance of CreateSubmissionDataRequestTokenResponseToken' do
      expect(@instance).to be_instance_of(FormAPI::CreateSubmissionDataRequestTokenResponseToken)
    end
  end
  describe 'test attribute "expires_at"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "secret"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "data_request_url"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
