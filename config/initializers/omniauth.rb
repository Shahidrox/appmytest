Rails.application.config.middleware.use OmniAuth::Builder do
	if Rails.env.development?
  		provider :facebook, 'key', 'key', {:provider_ignores_state => true}
    else
    	provider :facebook, 'key', 'key', {:provider_ignores_state => true}
    end  
end