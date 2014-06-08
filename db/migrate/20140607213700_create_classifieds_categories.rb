class CreateClassifiedsCategories < ActiveRecord::Migration
  def change
    create_table :classifieds_categories do |t|
      t.integer :section_id
      t.string :name
      t.string :icon
      t.timestamps
    end
  end
end
