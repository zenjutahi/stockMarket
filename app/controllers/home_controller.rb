class HomeController < ApplicationController
  def index
    @stockApi = StockQuote::Stock.new(api_key: "pk_36376d6cf9f64da9a2fa81f7a843ecea")
  end

  def about
  end
end
