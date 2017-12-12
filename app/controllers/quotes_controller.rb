class QuotesController < ApplicationController

  def index
    # @quotes = Quote.all
    # puts "params: "
    if !params[:first_season]
      first_season = 0
    else
      first_season = params[:first_season].to_i
    end
    if !params[:last_season]
      last_season = 100
    else
      last_season = params[:last_season].to_i
    end
    character = params[:character]
    character ||= ""
    character = "%" + character + "%"
    content = params[:content]
    content ||= ''
    content = "%" + content + "%"
    @quotes = Quote.where("season_number >= :first_season AND season_number <= :last_season AND character LIKE :character AND content LIKE :content",
    {first_season: first_season, last_season: last_season, character: character, content: content})
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
    params.permit(:content, :character, :episode_of_season, :season_number, :first_season, :last_season)
  end
end
