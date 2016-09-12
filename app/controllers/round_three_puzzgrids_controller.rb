class RoundThreePuzzgridsController < ApplicationController
  load_and_authorize_resource :oc
  load_and_authorize_resource through: :oc, singleton: true

  def new
    render 'edit'
  end

  def create
    if @round_three_puzzgrid.save
      render 'update'
    else
      render js: 'alert("Couldn\'t save that. Try again.")'
    end
  end

  def edit
  end

  def update
    if @round_three_puzzgrid.update(round_three_puzzgrid_params)
    else
      render js: 'alert("Couldn\'t save that. Try again.")'
    end
  end

  def round_three_puzzgrid_params
    params.require(:round_three_puzzgrid).permit(:grid_one, :grid_two)
  end
end
