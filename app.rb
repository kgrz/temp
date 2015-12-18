require 'sinatra/base'
require 'sinatra/assetpack'


class App < Sinatra::Base
  register Sinatra::AssetPack

  assets do
    js :application, [
      '/js/jquery.js',
      '/js/app.js'
    ]

    css :application, [
      '/css/app.css',
      'node_modules/foundation-sites/scss/*.scss'
    ]

    serve 'js', from: 'js'
    serve 'css', from: 'css'

    css_compression :sass
  end

  get '/' do
    erb :index
  end
end

App.run!
