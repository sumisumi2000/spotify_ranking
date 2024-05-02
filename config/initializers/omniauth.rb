require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, ENV["SPOTIFY_CLIENT_ID"], ENV["SPOTIFY_CLIENT_SECRET"], scope: 'user-read-email user-top-read'
  on_failure do |env|
    StaticpagesController.action(:top).call(env)
  end
end

OmniAuth.config.allowed_request_methods = [:post, :get]
