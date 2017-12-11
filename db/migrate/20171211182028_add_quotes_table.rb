class AddQuotesTable < ActiveRecord::Migration[5.1]
  def change
    create_table :quotes do |t|
      t.column :content, :string
      t.column :character, :string
      t.column :season_number, :integer
      t.column :episode_of_season, :integer
    end
  end
end
