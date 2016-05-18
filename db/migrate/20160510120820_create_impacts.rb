class CreateImpacts < ActiveRecord::Migration
  def change
    create_table :impacts do |t|
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
