class OcsController < ApplicationController
  load_and_authorize_resource

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @oc.destroy
    redirect_to root_path
  end

end
