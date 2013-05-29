# Use this hook to configure devise mailer, warden hooks and so forth.
# Many of these configuration options can be set straight in your model.
Devise.setup do |config|
  # ==> Mailer Configuration
  # Configure the e-mail address which will be shown in Devise::Mailer,
  # note that it will be overwritten if you use your own mailer class with default "from" parameter.
  config.mailer_sender = "please-change-me-at-config-initializers-devise@example.com"

  require 'devise/orm/active_record'
  require 'omniauth-facebook'

  config.case_insensitive_keys = [ :email ]
  config.strip_whitespace_keys = [ :email ]
  config.stretches = Rails.env.test? ? 1 : 10
  config.reset_password_within = 2.hours
  config.sign_out_via = :delete
  config.omniauth :facebook, "593053330729545", "ead3383139e6dd59dbf2bb84f0eb1bed"
end