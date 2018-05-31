class PositionsController < ApplicationController
  before_action :find_position, only: [:show, :update, :destroy]

  def show
    authorize @position
    respond_to do |format|
      format.html { redirect_to editor_path }
      format.js
    end
  end

  def create
    @new_position = current_user.positions.build(
      company_name: "New position",
      title: "Position held",
      start_date: "Thu, 01 Jan 2015",
      is_current: true,
      summary: "Describe your responsibilities in concise statements led by strong verbs. Focus on those skills and strengths that you possess and that you have identified as being important to your field. Try to incorporate industry specific key words. Show potential employers exactly how you will fit their position and their company.")
    authorize @new_position
    @new_position.save
    respond_to do |format|
      format.html { redirect_to editor_path }
      format.js
    end
  end

  def update
    authorize @position
    if @position.update(position_params)
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

  def destroy
    authorize @position
    @position.destroy
    respond_to do |format|
      format.html { redirect_to editor_path }
      format.js
    end
  end

  private

  def position_params
    params.require(:position).permit(:company_name, :title, :start_date, :end_date, :is_current, :summary)
  end

  def find_position
    @position = Position.find(params[:id])
  end
end
