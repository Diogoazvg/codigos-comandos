#Rails.application.config.middleware.use OmniAuth::Builder do
 # provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET'],
  #	:scope => 'email',
  #		:client_options => {
   #   		:site => 'https://facebook.com/dialog/oauth/',
    #  			:authorize_url => "https://codigos-comandos.herokuapp.com"
#    }
#end

OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development?
    OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
    provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET']
  else
    provider :facebook, 'DEPLOY_APP_ID', 'DEPLOY_APP_SECRET'
  end
end
