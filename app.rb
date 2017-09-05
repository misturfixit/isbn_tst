require "sinatra"
require_relative "isbn.rb"
#+++++++=======+++++++=======+++++++#
#*****^^^^^*****^^^^^*****^^^^^*****^^^^^*****#
get '/' do
	erb :input
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
