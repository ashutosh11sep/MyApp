class AddProfileImageToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :profile_image, :string
  end
end
