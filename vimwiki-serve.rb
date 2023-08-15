require 'sinatra'
require 'kramdown'

set :views, "#{ENV['HOME']}/vimwiki/"

get '/' do 
  markdown :index
end

get '/*' do |path|
  markdown path.to_sym, :layout_engine => :erb
end

__END__
@@layout
<!DOCTYPE html>
<html>
  <head>
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
    <title>Vimwiki</title>
    <link rel="icon" href="data:,">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/markdowncss/splendor/css/splendor.min.css">
  </head>
  <body>
    <%= yield %>
  </body>
</html>
