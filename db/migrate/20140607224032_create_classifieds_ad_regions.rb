class CreateClassifiedsAdRegions < ActiveRecord::Migration
  def change
    create_table :classifieds_ad_regions do |t|
      t.integer :ad_id, null: false
      t.integer :city_id
      t.integer :region_id
      t.integer :country_id
      t.timestamps
    end

    add_index :classifieds_ad_regions, :ad_id
    add_index :classifieds_ad_regions, :city_id
    add_index :classifieds_ad_regions, :country_id
  end
end
