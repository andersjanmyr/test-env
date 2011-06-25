# encoding: UTF-8
ep = File.expand_path('..', File.dirname(__FILE__))
require "#{ep}/spec_helper"
require 'json'
require 'test-env'

describe 'Test::Env::App' do

  def app
    Test::Env::App
  end

  it "get /env shows the environment" do
    get '/env'
    last_response.should be_ok
    last_response.body.should match(/PATH_INFO/)
  end

end

