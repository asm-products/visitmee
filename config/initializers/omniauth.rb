OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '332039686958112', '0437a56ce092d3354cbcae2dfd52098e'
end