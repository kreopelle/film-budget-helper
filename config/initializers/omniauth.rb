Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :google_oauth2, Rails.application.credentials.google_client_id, Rails.application.credentials.google_client_secret, scope: 'email, profile', prompt: 'select_account'
end
