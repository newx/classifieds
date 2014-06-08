class CreateClassifiedsCountries < ActiveRecord::Migration
  def change
    create_table :classifieds_countries do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
