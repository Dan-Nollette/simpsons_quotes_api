class Quote < ApplicationRecord
  validates :content, :presence => true
  validates :character, :presence => true
  validates :episode_of_season, :presence => true
  validates :season_number, :presence => true
end
