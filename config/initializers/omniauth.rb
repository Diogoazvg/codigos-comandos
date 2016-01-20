require "omniauth-facebook"
  config.omniauth :facebook, ENV["FACEBOOK_APP_ID"], ENV["FACEBOOK_SECRET"]

require "omniauth-google-oauth2"
config.omniauth :google_oauth2, ENV['GPLUS_KEY'], ENV['GPLUS_SECRET'], 
  { access_type: "offline", approval_prompt: "" }