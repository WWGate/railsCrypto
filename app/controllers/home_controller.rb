class HomeController < ApplicationController
  def index
  	require 'net/http'
  	require 'json'
  	@url = 'https://api.coinmarketcap.com/v2/ticker/'
  	@uri = URI(@url)
  	@response = Net::HTTP.get(@uri)
  	@coins = JSON.parse(@response)
  	@my_coins = ['BTC', 'XRP','XLM','SC']
  end

  def about
  end

  def lookup

  	require 'net/http'
  	require 'json'
  	@url = 'https://api.coinmarketcap.com/v2/ticker/'
  	@uri = URI(@url)
  	@response = Net::HTTP.get(@uri)
  	@lookup_coins = JSON.parse(@response)

  	@symbol = params[:sym]
  	if @symbol
  		@symbol = @symbol.upcase
  	end
  	if @symbol == ""
  		@symbol = "Please enter a currency symbol!"
  	end
  end

end
