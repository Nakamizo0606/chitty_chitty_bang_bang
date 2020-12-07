class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @applied_jobs = current_user.orders.all
  end
end
