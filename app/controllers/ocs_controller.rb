class OcsController < ApplicationController
  load_and_authorize_resource

  def new
  end

  def create
    if @oc.save
      flash[:notice] = "#{@oc.name} created"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    if @oc.round_three_puzzgrid.nil?
      @oc.build_round_three_puzzgrid
    end
  end

  def play
    render 'play', layout: 'slides'
  end

  def edit
  end

  def update
    if @oc.update(oc_params)
      flash[:notice] = "#{@oc.name} updated"
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @oc.destroy!
    flash[:notice] = "#{@oc.name} destroyed"
    redirect_to root_path
  end

  def oc_params
    params.require(:oc).permit(:name, :public)
  end
end
