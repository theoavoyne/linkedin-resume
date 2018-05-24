class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def profile
  end

  def editor
    @user = current_user
  end

  def resume
    render pdf: "#{current_user.first_name.downcase}-#{current_user.last_name.downcase}-resume",
    template: "templates/#{current_user.template}.html.erb", #see this file in the views
    layout: 'pdf.html',
    show_as_html: params.key?('debug'),
    margin: { top: 20, bottom: 28 },
    footer: { html: { template: "templates/#{current_user.template}_footer.html.erb", layout: 'footer.html' } }
  end
end
