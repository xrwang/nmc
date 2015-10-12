class AddVrUrlColumnToHouseholds < ActiveRecord::Migration
  def change
    add_column :households, :vr_url, :string
  end
end
