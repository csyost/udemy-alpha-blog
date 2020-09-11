class CreateArticleCats < ActiveRecord::Migration[6.0]
  def change
    create_table :article_cats do |t|
      t.integer :article_id
      t.integer :category_id
    end
  end
end
