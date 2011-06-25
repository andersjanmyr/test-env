require 'sinatra/base'

module Test
  module Env
    class App < Sinatra::Base
      configure(:development) do
        require 'sinatra/reloader'
        register Sinatra::Reloader
        also_reload "lib/**/*.rb"
      end

      get '/env' do
        p request.env
        request.env.inspect
      end
    end
  end
end

