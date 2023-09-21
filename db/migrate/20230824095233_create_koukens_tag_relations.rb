class CreateKoukensTagRelations < ActiveRecord::Migration[6.1]
  def change
    create_table :koukens_tag_relations do |t|
      t.references :kouken, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
