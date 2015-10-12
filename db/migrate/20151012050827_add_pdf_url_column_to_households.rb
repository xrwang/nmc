class AddPdfUrlColumnToHouseholds < ActiveRecord::Migration
  def change
    add_column :households, :pdf_url, :string
  end
end
