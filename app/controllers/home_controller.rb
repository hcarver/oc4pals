class HomeController < ApplicationController
  def index
    @your_ocs = current_user.ocs.order(:created_at) if user_signed_in?
    @public_ocs = OC.where(public: true).order(:created_at)
  end
end
