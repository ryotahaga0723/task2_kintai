class ApprovalsController < ApplicationController
  before_action :set_approval, only: %i[ edit update ]

  def edit
  end

  def update
    if @approval.update(approval_params)
      redirect_to sub_businesses_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_approval
      @approval = Approval.find(params[:id])
    end

  def approval_params
    params.require(:approval).permit(:approval, :sub_business_id, :user_id)
  end
end
