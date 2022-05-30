class ContractsController < ApplicationController
  def edit
    @user = User.find(params[:id])
    @contract = Contract.find(params[:id])
  end
    
  def update
    @contract = Contract.find(params[:id])
    if @contract.update(contract_params)
      flash[:notice] = 'アカウントを更新しました' 
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end

  private
  
  def contract_params
    params.require(:contract).permit(:prescribed_time_main, :agreement_time, :user_id)
  end

end
