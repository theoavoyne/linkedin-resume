class SkillsController < ApplicationController
  before_action :find_skill

  def update
    authorize @skill
    if @skill.update(skill_params)
      respond_to do |format|
        format.html { redirect_to editor_path }
        format.js
      end
    else
      respond_to do |format|
        format.html { render '/editor' }
        format.js
      end
    end
  end

  private

  def skill_params
    params.require(:skill).permit(:name, :level)
  end

  def find_skill
    @skill = Skill.find(params[:id])
  end
end
