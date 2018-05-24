class AddLevelToSkills < ActiveRecord::Migration[5.1]
  def change
    add_column :skills, :level, :float, default: 0.8
  end
end
