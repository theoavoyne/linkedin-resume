class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def profile
  end

  def editor
  end

  def resume
    render pdf: "resume",
    template: "templates/#{current_user.template}.html.erb",
    layout: 'pdf.html',
    show_as_html: params.key?('debug'),
    margin: { top: 20 }
  end
end
