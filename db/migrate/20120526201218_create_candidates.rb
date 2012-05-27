class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.references :offer, :user
      t.timestamps
    end
  end
end
