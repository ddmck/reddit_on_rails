class PagesController < ApplicationController
	def index
    per_page = params[:per_page] || 25
    page = params[:page] || 1
    @links = Link.order('created_at DESC').page(page).per_page(per_page)
  end
end
