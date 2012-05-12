class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :title, :null => false
      t.text :description
      t.timestamps
    end
  end
end
