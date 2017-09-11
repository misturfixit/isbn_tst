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
  name = File.basename "val_arr.csv"
  obj = s3.bucket('buckethed').object('val_arr.csv')
  obj.upload_file('val_arr.csv')
end
#send_to_bukkit()