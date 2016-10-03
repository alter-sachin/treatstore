class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end

require 'httparty'

url = 'https://api.spotify.com/v1/search?type=artist&q=tycho'
response = HTTParty.get(url)
response.parsed_response
