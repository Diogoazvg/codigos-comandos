Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET'],
  	:scope => 'email',
  		:client_options => {
      		:site => 'https://facebook.com/dialog/oauth/',
      			:authorize_url => "https://codigos-comandos.herokuapp.com"
    }
end


