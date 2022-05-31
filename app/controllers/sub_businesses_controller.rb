class SubBusinessesController < ApplicationController
  before_action :set_sub_business, only: %i[ show edit update destroy ]

  # GET /sub_businesses or /sub_businesses.json
  def index
    if current_user.admin?
      @sub_businesses_approval = SubBusiness.left_outer_joins(:user).left_outer_joins(:approval).where(approvals: {approval: 1})
      @sub_businesses = SubBusiness.left_outer_joins(:user).left_outer_joins(:approval).where(approvals: {approval: 0})
    else
      @sub_businesses_approval = SubBusiness.left_outer_joins(:user).left_outer_joins(:approval).where(users: {id: current_user.id}).where(approvals: {approval: 1})
      @sub_businesses = SubBusiness.left_outer_joins(:user).left_outer_joins(:approval).where(users: {id: current_user.id}).where(approvals: {approval: 0})
    end
  end

  # GET /sub_businesses/1 or /sub_businesses/1.json
  def show
  end

  # GET /sub_businesses/new
  def new
    @sub_business = SubBusiness.new
    @sub_business.build_approval
  end

  # GET /sub_businesses/1/edit
  def edit
  end

  # POST /sub_businesses or /sub_businesses.json
  def create
    @sub_business = SubBusiness.new(sub_business_params)

    if @sub_business.save
      User.where(admin: true).each do |user|
        UserMailer.with(to: user.email, name: user.name, sub_business: @sub_business).sub_business_apply.deliver_now
      end
      redirect_to sub_businesses_path(current_user.id), notice: "副業を登録しました"
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sub_businesses/1 or /sub_businesses/1.json
  def update
    if @sub_business.update(sub_business_params)
      redirect_to sub_businesses_path(current_user.id), notice: "副業を更新しました"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /sub_businesses/1 or /sub_businesses/1.json
  def destroy
    @sub_business.destroy
    redirect_to sub_businesses_url, notice: "副業を削除しました"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_business
      @sub_business = SubBusiness.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sub_business_params
      params.require(:sub_business).permit(:status, :sub_business_company, :sub_business_content, :prescribed_time_sub, :over_time, :user_id, approval_attributes: [:id, :approval, :user_id])
    end
end
