class AddNoteToEducations < ActiveRecord::Migration[5.1]
  def change
    add_column :educations, :notes, :text
  end
end
