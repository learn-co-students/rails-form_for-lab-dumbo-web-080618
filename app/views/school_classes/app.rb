require 'sinatra/base'

class App < Sinatra::Base
  get "/newteam" do
    erb :newteam
  end
  post "/team" do
    @team = params["name"]
    @coach = params["coach"]
    @pt = params["pg"]
    @guard = params["sg"]
    @sm = params["sf"]
    @pw = params["pf"]
    @cntr = params["c"]

      erb :team
  end

end
