class InventoryController < ApplicationController
  def new
  	@widget = Widget.new
  end

  def create
  	@widget = Widget.create(params[:widget])
  	redirect_to :controller => 'inventory',
      			  	:action => 'show',
      			  	:id =>@widget.id
  end

  def show
  	@widget = Widget.find(params[:id])
  end

  def index
  	@widgets = Widget.all
  end

  def edit
    @widget = Widget.find(params[:id])
  end

  def update
  	@widget = Widget.find(params[:id])
  	if @widget.update_attributes(params[:widget])
  		redirect_to :controller => 'inventory',
                  :action => 'show',
                  :id =>@widget.id
  	else
  		render :edit
  	end
  end

  def delete
    widget = Widget.find(params[:id])
    widget.destroy
    redirect_to :controller => 'inventory',
                :action => 'index'
  end

end
