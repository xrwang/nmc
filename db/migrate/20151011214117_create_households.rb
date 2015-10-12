class CreateHouseholds < ActiveRecord::Migration
  def change
    create_table :households do |t|
      t.float :long
      t.float :lat
      t.float :elevation
      t.string :nickname
      t.string :code
      t.string :country
      t.string :image

      t.timestamps null: false
    end
  end
end
