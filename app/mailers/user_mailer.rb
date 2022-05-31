class UserMailer < ApplicationMailer
  def sub_business_apply
    @name = params[:name]
    @sub_business = params[:sub_business]
    mail(to: params[:to], subject: "副業申請") 
  end

  def sub_business_approval
    @name = params[:name]
    @approval = params[:approval]
    mail(to: params[:to], subject: "副業申請結果")
  end

  def schedule_apply
    @name = params[:name]
    @schedule = params[:schedule]
    mail(to: params[:to], subject: "休暇申請")
  end
end