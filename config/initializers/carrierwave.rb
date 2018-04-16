CarrierWave.configure do |config|
  if Rails.env.test?
    config.storage :file
    config.asset_host = 'http://localhost:3000'
  else

    config.fog_use_ssl_for_aws = true
    config.fog_directory  = ENV['arn:aws:s3:::romanpetbucket']
    config.fog_public     = true
    config.fog_attributes = { 'Cache-Control': 'max-age=315576000' }

    config.fog_credentials = {
        provider:               ENV['AWS'],
        aws_access_key_id:      ENV['AKIAJFEBVTLCTBNP6N7A'],
        aws_secret_access_key:  ENV['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'],
    }

    config.storage = :fog
  end
end