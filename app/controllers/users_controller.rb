class UsersController < ApplicationController
    before_action :correct_user, only: [ :destroy]
    before_action :require_admin, only:[:index ]
    skip_before_action :login_required, only: [:new, :create]
  
    def index
      @users = User.all
    end

    def new
      @user = User.new
      @user.build_contract
    end
  
    def create
      @user = User.new(user_params)
      if @user.save
        210.times do |n|
          Timecard.create!(
            date: "#{Date.today-60+n}",
            user_id: @user.id
          )
        end
        log_in(@user)
        redirect_to decide_main_business_times_path(@user.id)
      else
        render :new
      end
    end
  
    def show
      @user = User.find(params[:id])
    end
  
    def edit
      @user = User.find(params[:id])
    end

    def edit_admin
      @user = User.find(params[:id])
    end
  
    def update
      @user = User.find(params[:id])
      if @user.update(user_params)
        log_in(@user)
        flash[:notice] = 'アカウントを更新しました' 
        redirect_to user_path(@user.id)
      else
        render :edit
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :admin, contract_attributes: [:id, :prescribed_time_main, :agreement_time])
    end
  
    def correct_user
      @user = User.find(params[:id])
      redirect_to current_user unless current_user?(@user)
    end

    def require_admin
        redirect_to root_path unless current_user.admin?
      end  
  end
  