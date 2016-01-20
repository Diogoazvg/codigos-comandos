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
  provider :developer unless Rails.env.production?
  provider :facebook, ENV["FACEBOOK_APP_ID"], ENV["FACEBOOK_SECRET"]
  provider :google_oauth2, ENV['GPLUS_KEY'], ENV['GPLUS_SECRET'] 
   # { access_type: "offline", approval_prompt: "" }
end



