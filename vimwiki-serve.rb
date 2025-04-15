require 'sinatra'
require 'kramdown'

set :views, "#{ENV['HOME']}/vimwiki/"
set :public_folder, "#{ENV['HOME']}/vimwiki/"

get '/' do 
  redirect to('/index')
end

get '/*' do |path|
  begin
     markdown path.to_sym, :layout_engine => :erb
  rescue
    send_file path
  end
end

__END__
@@layout
<!DOCTYPE html>
<html>
  <head>
    <title>Vimwiki</title>
    <link rel="icon" href="data:,">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/markdowncss/splendor/css/splendor.min.css">
  </head>
  <body>
    <%= yield %>
  </body>
</html>
