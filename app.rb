require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/users_controller')
require_relative('controllers/merchants_controller')
require_relative('controllers/transactions_controller')
require_relative('controllers/tags_controller')

get '/' do
  erb( :index )
end
