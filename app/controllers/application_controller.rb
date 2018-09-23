require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

      get '/' do
        erb :'/index'
      end

      post '/teams' do
        # @team = Team.new(params[:hero])
        # @team.name = params[:name]

        # @team = Team.new(params[:team])
        #
        # params[:team][:members].each do |details|
        #   Hero.new(details)
        #   end
        #
        #   @heroes = Hero.all
        #
        # erb :team

        @team_name = params[:team][:name]
        @team_motto = params[:team][:motto]
        @members = params[:team][:members]
        erb :team
      end




end
