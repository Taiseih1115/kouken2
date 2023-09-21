class AddYoutubeUrlToKoukens < ActiveRecord::Migration[6.1]
  def change
    add_column :koukens, :youtube_url, :string
  end
end
