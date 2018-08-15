class ApplicationController < ActionController::Base
  include ActionController::HttpAuthentication::Token::ControllerMethods

  before_action :authorized

  def current_member
    @current_member || authenticate_or_request_with_http_token do |jwt_token, options|

      begin
        decoded_token = JWT.decode(jwt_token, "password123")

      rescue JWT::DecodeError
        return nil
      end

      if decoded_token[0]["member_id"]
        @current_member ||= Member.find(decoded_token[0]["member_id"])
      else
      end
    end
  end

  def logged_in?
    !!current_member
  end

  def authorized
    render json: {message: "Not welcome" }, status: 401 unless logged_in?
  end

end
