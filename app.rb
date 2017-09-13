require "sinatra"
require 'aws-sdk'
require "csv"
require "aws-sdk"
require_relative "isbn.rb"
require_relative "sender.rb"
	load "./local_env.rb"
	enable :sessions
#+++++++=======+++++++=======+++++++#
#*****^^^^^*****^^^^^*****^^^^^*****^^^^^*****#
get '/' do
	numbr = get_dat()
	erb :input, locals:{numbr:numbr}
end
#*****^^^^^*****^^^^^*****^^^^^*****^^^^^*****#
post '/csv' do
	redirect '/csv_ret'
end	
#*****^^^^^*****^^^^^*****^^^^^*****^^^^^*****#
get '/csv_ret' do
	csv_arrs = CSV.read("isbnum.csv")
	erb :csv_ret, locals:{csv_arrs:csv_arrs}
end	
#*****^^^^^*****^^^^^*****^^^^^*****^^^^^*****#
post '/csvrun' do
	session[:is_arr] = params[:is_arr]
	is_arr = params[:is_arr]
	val_arr =[]
		is_arr.each do |x|
			val_arr << check_isbn(x)
		end
	session[:val_arr] = val_arr
	redirect '/validate'		
	#send_to_bukkit(val_arr) ha
end	
#*****^^^^^*****^^^^^*****^^^^^*****^^^^^*****#
get '/validate' do
	erb :validate, locals:{is_arr:session[:is_arr],val_arr:session[:val_arr]}
end	
#*****^^^^^*****^^^^^*****^^^^^*****^^^^^*****#
post '/nums' do
	isbn = params[:isbn]
	redirect '/results?isbn='+isbn
end	
#*****^^^^^*****^^^^^*****^^^^^*****^^^^^*****#
get '/results' do
	isbn = params[:isbn]
	results = check_isbn(isbn)
	erb :results, locals:{isbn:isbn,results:results}
end	
#*****^^^^^*****^^^^^*****^^^^^*****^^^^^*****#
#*****^^^^^*****^^^^^*****^^^^^*****^^^^^*****#
