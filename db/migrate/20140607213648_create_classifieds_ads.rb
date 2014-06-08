class CreateClassifiedsAds < ActiveRecord::Migration
  def change
    create_table :classifieds_ads do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :title
      t.string :slug
      t.string :type, default: "product"
      t.decimal :price, :precision => 8, :scale => 2, :default => 0.0, :null => true
      t.text :short_desc
      t.text :description
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
