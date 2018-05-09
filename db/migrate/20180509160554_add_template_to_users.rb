class AddTemplateToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :template, :string, default: "finance"
  end
end
