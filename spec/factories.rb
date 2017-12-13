FactoryBot.define do
  factory(:quote) do
    content("D'oh!")
    character("Homer Simpson")
    season_number(5)
    episode_of_season(5)
  end
end
