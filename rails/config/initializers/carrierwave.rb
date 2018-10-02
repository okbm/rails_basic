CarrierWave.configure do |config|
  case Rails.env
  when 'production', 'staging'
   config.fog_credentials = {
     provider:              'AWS',
     aws_access_key_id:     Rails.application.credentials.aws[:access_key_id],
     aws_secret_access_key: Rails.application.credentials.aws[:secret_access_key],
     region:                'ap-northeast-1'
   }
   config.storage   = :fog
   config.fog_directory  = Rails.application.credentials.aws[:s3_bucket]
   config.fog_public     = false
   config.fog_attributes = { 'Cache-Control' => 'max-age=315576000' }
   config.asset_host     = "https://#{Rails.application.credentials.aws[:s3_bucket]}.s3.amazonaws.com"
  when 'development'
    config.storage = :file
    config.enable_processing = false
  else
    config.storage = :file
    config.enable_processing = false
  end
end
