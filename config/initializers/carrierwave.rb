CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => Settings.aws.access_key_id,
      :aws_secret_access_key  => Settings.aws.secret_access_key,
      :region                 => Settings.aws.s3_bucket_region,
      :path_style             => true,
  }

  config.fog_public     = true
  config.fog_attributes = {'Cache-Control' => 'public, max-age=86400'}

  case Rails.env
    when 'production'
      config.fog_directory = 'protospace117'
    when 'development'
      config.fog_directory = 'protospace117'
  end
end
