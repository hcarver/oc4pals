class MissingVowelsRoundsController < ApplicationController
  load_and_authorize_resource :oc
  load_and_authorize_resource through: :oc

  def new
  end

  def create
    if @missing_vowels_round.save
    else
      render 'edit'
    end
  end

  def edit
  end

  def update
    @missing_vowels_round.update(missing_vowels_round_params)
  end

  def destroy
    @missing_vowels_round.destroy
  end

  def missing_vowels_round_params
    params.require(:missing_vowels_round).permit(
      :connection, :position, :clue1, :clue2, :clue3, :clue4, :answer1,
      :answer2, :answer3, :answer4)
  end
end
