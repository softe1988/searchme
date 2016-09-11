OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV[Figaro.env.APP_ID], ENV[Figaro.env.APP_SECRET],
    scope: 'email, public_profile ',
    display: 'popup'
end