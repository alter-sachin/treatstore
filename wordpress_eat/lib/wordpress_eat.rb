require "httparty"

module WordpressEat
  include HTTParty
  base_uri "http://www.eattreatonline.com/api"

  def self.recent_posts
	get("/get_recent_posts").parsed_response["posts"]
  end
end


