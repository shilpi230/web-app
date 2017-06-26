class CreateArticleCollections < ActiveRecord::Migration
  def change
    create_table :article_collections do |t|
      t.integer :article_id
      t.integer :collection_id

      t.timestamps null: false
    end
  end
end
