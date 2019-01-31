require 'sinatra/base'
require './lib/peeps'

class Chitter < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/peeps' do
    @peeps = Peep.all
    erb :'peeps/index'
  end

  get '/peeps/new' do
    erb :'peeps/new' 
  end


  post '/peeps' do
    Peep.add(peep: params[:new_peep])
    redirect '/peeps'
  end

  run! if app_file ==$0

end
