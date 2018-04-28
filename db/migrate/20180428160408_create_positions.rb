class CreatePositions < ActiveRecord::Migration[5.1]
  def change
    create_table :positions do |t|
      t.string :company_name
      t.text :summary
      t.date :start_date
      t.date :end_date
      t.string :company_ticker_url
      t.boolean :is_current
      t.string :title
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
