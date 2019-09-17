class RoundOneQuestionsController < ApplicationController
  load_and_authorize_resource :oc
  load_and_authorize_resource through: :oc

  def new

  end

  def create
    if @round_one_question.save
    else
      render 'edit'
    end
  end

  def edit
  end

  def update
    if !@round_one_question.update(round_one_question_params)
      render 'edit'
    end
  end

  def destroy
    @round_one_question.destroy
  end

  def round_one_question_params
    params.require(:round_one_question).permit(:is_pictures, :clue1, :clue2,
      :clue3, :clue4, :answer)
  end
end
