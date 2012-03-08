class CreateBoltArticles < ActiveRecord::Migration
  def change
    create_table :bolt_articles do |t|
      t.string :title
      t.string :alias
      t.string :category
      t.integer :status
      t.string :access
      t.integer :featured
      t.text :article_text

      t.timestamps
    end
  end
end
