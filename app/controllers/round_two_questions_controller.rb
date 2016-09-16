class RoundTwoQuestionsController < ApplicationController
  load_and_authorize_resource :oc
  load_and_authorize_resource through: :oc

  def new

  end

  def create
    if @round_two_question.save
    else
      render 'edit'
    end
  end

  def edit
  end

  def update
    if !@round_two_question.update(round_two_question_params)
      render 'edit'
    end
  end

  def destroy
    @round_two_question.destroy
  end

  def round_two_question_params
    params.require(:round_two_question).permit(:is_pictures, :clue1, :clue2,
      :clue3, :clue4, :connection)
  end
end
