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
    @is_first = current_user.positions.length.zero?
    @new_position = current_user.positions.build(
      company_name: "New position",
      title: "Lorem ipsum dolor sit amet",
      start_date: Date.today,
      is_current: true,
      summary: Faker::Lorem.paragraph(5))
    authorize @new_position
    if @new_position.save
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
    @was_last = current_user.positions.length.zero?
    @next = current_user.positions.first unless @was_last
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
