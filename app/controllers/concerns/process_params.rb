module ProcessParams
  def quotes_by_season(params)
    id = params[:id].to_i
    puts (params[:id] )
    first_season = id / 100
    last_season = id % 100
    if id < 100
      first_season = id
      last_season = first_season
    end
    Quote.where("season_number >= :first_season AND season_number <= :last_season",
  {first_season: first_season, last_season: last_season})
  end
end
