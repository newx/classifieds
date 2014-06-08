class CreateClassifiedsSections < ActiveRecord::Migration
  def change
    create_table :classifieds_sections do |t|
      t.string :name
      t.timestamps
    end
  end
end
