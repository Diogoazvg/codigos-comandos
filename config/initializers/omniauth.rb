Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET'],
  	:scope => 'email',
  		:client_options => {
      		:site => 'https://codigos-comandos.herokuapp.com',
      			:authorize_url => "https://facebook.com/dialog/oauth/"
    }
end