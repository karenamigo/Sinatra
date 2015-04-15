require 'sinatra'
require_relative 'lib/credit_card'
class CreditCardAPI  <  Sintra::Base

get '/' do

'your service is running: API available at/api/v1'

end

get '/api/sinatra' do

'Service offered<br>'\
'GET /api/v1/credit_card?card_number=[number]<br>'\

end

get '/api/v1/credit_card/validate' do
	number=params[:number]
	card_n=CreditCard.new(number, nil, nil, nil)
	halt 400 unless card_num
	{card:number,
	 validate:card_n.validate_checksum
	}.to_json
end
end