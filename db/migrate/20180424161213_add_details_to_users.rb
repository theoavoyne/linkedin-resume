class AddDetailsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :linkedin_profile_url, :string
    add_column :users, :location_name, :string
    add_column :users, :location_country, :string
    add_column :users, :headline, :text
    add_column :users, :linkedin_picture_url, :string
  end
end
