class CreateClassifiedsAdCities < ActiveRecord::Migration
  def change
    create_table :classifieds_ad_cities do |t|
      t.integer :ad_id
      t.integer :city_id
      t.timestamps
    end
  end
end
