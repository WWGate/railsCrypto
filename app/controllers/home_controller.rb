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
end
