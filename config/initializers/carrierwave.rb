require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: Rails.application.secrets.aws_access_key_id,
    aws_secret_access_key: Rails.application.secrets.aws_secret_access_key,
    region: 'us-east-2'
  }

  config.fog_directory  = 'tomicari-update'
  config.asset_host = 'https://s3-us-east-2.amazonaws.com/tomicari-update'
end

# require 'carrierwave/storage/abstract'
# require 'carrierwave/storage/file'
# require 'carrierwave/storage/fog'

# CarrierWave.configure do |config|
#   config.storage = :fog
#   config.fog_credentials = {
#     provider: 'AWS',
#     aws_access_key_id: Rails.application.secrets.aws_access_key_id,
#     aws_secret_access_key: Rails.application.secrets.aws_secret_access_key,
#     region: 'us-east-2'
#   }

#    case Rails.env
#     when 'development'
#         config.fog_directory  = 'tomicari-update'
#         config.asset_host = 'https://s3.amazonaws.com/tomicari-update'
#     when ‘production’
#         config.fog_directory  = 'tomicari-update'
#         config.asset_host = 'https://s3.amazonaws.com/tomicari-update'
#     end
# end
