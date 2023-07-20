require 'sinatra'
require 'kramdown'

set :views, "#{ENV['HOME']}/vimwiki/"

get '/' do 
  markdown :index
end

get '/*' do |path|
  markdown path.to_sym
end
