class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def profile
  end

  def editor
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "editor"   # Excluding ".pdf" extension.
      end
    end
  end
end
