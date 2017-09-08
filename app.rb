require "sinatra"
require_relative "isbn.rb"
require "csv"
enable "sessions"
#+++++++=======+++++++=======+++++++#
#*****^^^^^*****^^^^^*****^^^^^*****^^^^^*****#
get '/' do
	erb :input
end
#*****^^^^^*****^^^^^*****^^^^^*****^^^^^*****#
post '/csv' do
	redirect '/csv_ret'
end	
#*****^^^^^*****^^^^^*****^^^^^*****^^^^^*****#
get '/csv_ret' do
	csv_arrs = CSV.read("isbn.csv")
	erb :csv_ret, locals:{csv_arrs:csv_arrs}
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
