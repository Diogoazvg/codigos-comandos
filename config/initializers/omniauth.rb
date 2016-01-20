#Rails.application.config.middleware.use OmniAuth::Builder do
 # provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET'],
  #	:scope => 'email',
  #		:client_options => {
   #   		:site => 'https://facebook.com/dialog/oauth/',
    #  			:authorize_url => "https://codigos-comandos.herokuapp.com"
#    }
#end

#OmniAuth.config.logger = Rails.logger

#Rails.application.config.middleware.use OmniAuth::Builder do
 # if Rails.env.development?
  #  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
  #  provider :facebook, ENV["FACEBOOK_APP_ID"], ENV["FACEBOOK_SECRET"]
  #else
   # provider :facebook, 
   # scope: 'email'
  #end
#end

#require "omniauth-facebook"
#require "omniauth-google-oauth2"
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "1676686979209593", "aca40fc8294bdce4d9015b3d94a49f28"
  provider :google_oauth2, "395356569321-8a6si6n8pvqt71ds2mk576dcibqd0925.apps.googleusercontent.com", "-sy40AtweE8bOwAE1uJKF2pO" 
   # { access_type: "offline", approval_prompt: "" }
end



