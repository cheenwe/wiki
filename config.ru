#!/usr/bin/env ruby
require 'rubygems'
require 'gollum/app'

# authentication
module Precious
  class App < Sinatra::Base
    use Rack::Auth::Basic, "Restricted Area" do |username, password|
      # [username, password] == [Settings.username, Settings.password]
       [username, password] == ['admin', 'admin']
    end
  end
end

# gollum
gollum_path = File.expand_path(File.dirname(__FILE__)) # CHANGE THIS TO POINT TO YOUR OWN WIKI REPO
Precious::App.set(:gollum_path, gollum_path)
Precious::App.set(:default_markup, :markdown)
Precious::App.set(:wiki_options, {
  :css           => true,
  :live_preview  => true,
  :mathjax       => true,
  :allow_uploads => true,
  :universal_toc => true,
  :user_icons    => 'gravatar',
})
run Precious::App
