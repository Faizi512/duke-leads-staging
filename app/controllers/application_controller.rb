class ApplicationController < ActionController::Base

  RECAPTCHA_MINIMUM_SCORE = 0.5

  def verify_recaptcha?(token, recaptcha_action)
    secret_key = '6Lfpft4ZAAAAALZtmGmNu8agK_ZQO9eVB_SdEkhP'
    uri = URI.parse("https://www.google.com/recaptcha/api/siteverify?secret=#{secret_key}&response=#{token}")
    response = Net::HTTP.get_response(uri)
    json = JSON.parse(response.body)
    json['success'] && json['score'] > RECAPTCHA_MINIMUM_SCORE && json['action'] == recaptcha_action
  end
end
