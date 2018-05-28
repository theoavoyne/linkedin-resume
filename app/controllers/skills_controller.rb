class SkillsController < ApplicationController
  before_action :find_skill, only: [:update, :destroy]

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

  def create
    @new_skill = current_user.skills.build(name: "New skill")
    authorize @new_skill
    @new_skill.save
    respond_to do |format|
      format.html { redirect_to editor_path }
      format.js
    end
  end

  def destroy
    authorize @skill
    @skill.destroy
    respond_to do |format|
      format.html { redirect_to editor_path }
      format.js
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
