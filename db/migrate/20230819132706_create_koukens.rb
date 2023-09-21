class CreateKoukens < ActiveRecord::Migration[6.1]
  def change
    create_table :koukens do |t|
      t.string :tag
      t.text :main
      t.string :title
      t.string :YouTube
      t.string :image
      t.datetime :start_time

      t.timestamps
    end
  end
end
