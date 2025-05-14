require 'sinatra'
require 'json'

def add(entry)
  puts entry.to_json
end

use Rack::Auth::Basic, "Restricted Area" do |username, password|
    [username, password] == ['admin', 'admin']
end

get '/*' do |req|
  q = params.except(:splat)
  add(q)
  erb <<-EOF
  received #{req}<br>received #{request.query_string}<br>rec #{q}
  <form action="/submit">
  <% params.each do |k,v| %>
  <input type=hidden name=<%= k %> value=<%= v %>>
  <% end %>
  <input type="text" name="post">
  <input type="submit" onclick="closeWindow();">
  </form>
  EOF
end

# get '/submit'
