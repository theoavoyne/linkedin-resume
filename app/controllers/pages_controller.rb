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
        render pdf: "editor",
        template: "pages/editor.html.erb",
        layout: 'pdf.html',
        show_as_html: params.key?('debug'),
        margin: { top: 20 }
      end
    end
  end
end
