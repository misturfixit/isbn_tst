#require 'rubygems'
require 'aws-sdk'
require 'csv'
	load "./local_env.rb"

def send_to_bukkit()
	# Aws.config.update({
  # credentials: Aws::Credentials.new('******', '************')
#})
  s3 = Aws::S3::Resource.new(region: 'us-east-2')
  bucket = s3.bucket('buckethed')
  name = File.basename ".csv"
  obj = s3.bucket('buckethed').object('.csv')
  obj.upload_file('.csv')
end
#send_to_bukkit()