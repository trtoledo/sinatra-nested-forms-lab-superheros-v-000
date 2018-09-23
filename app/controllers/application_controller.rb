require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

      get '/' do
        erb :'/index'
      end

      post '/teams' do
        # @team = Team.new(params[:hero])
        # @team.name = params[:name]

        @team_name = params[:team][:name]
        @team_motto = params[:team][:motto]
        @heroes = params[:team][:heroes]
        erb :'/team'
      end




end
