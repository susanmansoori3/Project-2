class InvitationsController < ApplicationController
  def index
    @invitations = Invitation.all
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def new
    @invitation = Invitation.new
  end

  def create
    invitation = Invitation.new(params.require(:invitation).permit(:title, :description))
    if invitation.save
      # Interest of time
      redirect_to invitations_index
    end
  end
end
