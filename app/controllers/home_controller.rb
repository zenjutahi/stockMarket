class HomeController < ApplicationController
  def index
    @stock_api = StockQuote::Stock.new(api_key: "pk_36376d6cf9f64da9a2fa81f7a843ecea")
    if params[:ticker] == ""
      @nothing = "Hey! You forgot to Enter A Symbol"
    elsif params[:ticker]
      begin
        @stock = StockQuote::Stock.quote(params[:ticker])
        @comapany_data = StockQuote::Stock.company(params[:ticker])
        @logo = StockQuote::Stock.logo(params[:ticker])
      rescue RuntimeError => e
        @error = "Hey! You must have entered an #{e.message}"
      end
    end
  end

  def about
  end
end
