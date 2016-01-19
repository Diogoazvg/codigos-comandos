Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET'],
  	:scope => 'email', :display => 'popup', 
  		:client_options => {
      		:site => 'https://codigos-comandos.herokuapp.com',
      			:authorize_url => "https://facebook.com/dialog/auth/"
    }
end