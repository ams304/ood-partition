require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    @sinfo_output = `/opt/slurm/bin/sinfo -o "%P %.6D %.11C %.8m %.20G %t" 2>&1`
    erb :index
  end
end
