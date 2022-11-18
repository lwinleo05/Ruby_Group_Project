class AdminsController < ApplicationController

  before_action :ensure_admin

  def ensure_admin

    if !logged_in? || current_user.user_type == '1'
      #raise ActionController::RoutingError, 'Not Found'
      render 'strict'
      
    end

  end

  def dashboard

    @reservations = Reservation.all
    
  end

  def showUsers

    @users = UserService.getAllUsers

  end

  def profilePage

  end

end