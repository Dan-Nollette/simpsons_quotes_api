class QuotesController < ApplicationController

  def index
    @quotes = Quote.all
    json_response(@quotes, 200)
  end

  def show
    @quote = Quote.find(params[:id])
    json_response(@quote, 200)
  end

  def create
    @quote = Quote.create!(quote_params)
    json_response(@quote, 200)
  end

  def update
    @quote = Quote.find(params[:id])
    @quote.update(quote_params)
  end

  def destroy
    @quote = Quote.find(params[:id])
    @quote.destroy
    json_response(@quote)
  end

private

  def quote_params
    params.permit(:content, :character, :episode_of_season, :season_number)
  end
end
