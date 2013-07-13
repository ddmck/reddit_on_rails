class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def new
    @link = Link.new
  end

  def show
    @link = Link.find(params[:id])
  end

  def create
    @link = Link.new(params[:link])
    if @link.save
      flash[:notice] = "Link added"
      redirect_to link_path(@link) 
    else
      flash[:notice] = "Error"
      redirect_to new_link_path
    end
  end

end
