class UsersController < ApplicationController
  def update
    authorize current_user
    if current_user.update(user_params)
      redirect_to editor_path
    else
      render root_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:template)
  end
end
