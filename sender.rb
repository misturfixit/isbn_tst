

def send_to_bukkit()
	# Aws.config.update({
  # credentials: Aws::Credentials.new('******', '************')
#})
  s3 = Aws::S3::Resource.new(region: 'us-east-2')
  bucket = s3.bucket('buckethed')
  name = File.basename "results.csv"
  obj = s3.bucket('buckethed').object('results.csv')
  obj.upload_file('results.csv')
end
#send_to_bukkit()

def get_dat()
	s3 = Aws::S3::Client.new
	mybuketfile = s3.get_object(bucket:"buckethed", key:"results.csv")
	numbr = mybuketfile.body.read
	numbr.gsub!(/[^0-9A-Za-z\n,]/, "")
	splittr = numbr.split
splittr
end	
#get_dat
