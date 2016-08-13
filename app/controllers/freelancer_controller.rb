class FreelancerController < ApplicationController
  before_action :authenticate_user!

  def index
    flash[:notice] = "Hover over stuff(pictures, text) for instructions!"
  end

  def show
    if current_user.sign_in_count == 1
      flash[:notice] = "Thanks for Registering! Hover over stuff(pictures, text) for instructions!"
    end
  end
end
