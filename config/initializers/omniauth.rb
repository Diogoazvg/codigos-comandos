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
   # provider :facebook, "1676686979209593", "aca40fc8294bdce4d9015b3d94a49f28",
   # scope: 'email'
  #end
#end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "1676686979209593", "aca40fc8294bdce4d9015b3d94a49f28"
end