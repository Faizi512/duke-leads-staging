class PagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  end

  def terms
  end

  def privacy
  end

  def cookie
  end

  def success
    unless verify_recaptcha?(params[:recaptcha_token], 'verify')
      flash.now[:error] = t('recaptcha.errors.verification_failed')
      return render 'pages/index'
    end
    if params[:user]
      UserMailer.new_register(params[:user]).deliver_now
    end
  end
end
