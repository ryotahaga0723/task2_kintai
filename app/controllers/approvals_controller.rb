class ApprovalsController < ApplicationController
  before_action :set_approval, only: %i[ edit update ]

  def edit
  end

  def update
    if @approval.update(approval_params)
      UserMailer.with(to: @approval.sub_business.user.email, name: @approval.sub_business.user.name, approval: @approval).sub_business_approval.deliver_now
      redirect_to sub_businesses_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def set_approval
      @approval = Approval.find(params[:id])
    end

  def approval_params
    params.require(:approval).permit(:approval, :sub_business_id, :user_id)
  end
end
