class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def profile
  end

  def editor
  end

  def resume
    render pdf: "#{current_user.first_name}-#{current_user.last_name}-resume",
    template: "templates/_#{current_user.template}.html.erb", #see this file in the views
    layout: 'pdf.html',
    show_as_html: params.key?('debug'),
    margin: { top: 20, bottom: 28 },
    footer: { html: { template: "templates/_#{current_user.template}_footer.html.erb", layout: 'footer.html' } }
  end
end
