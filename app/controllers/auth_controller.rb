class AuthController < ApplicationController
  skip_before_action :authorized, only: [:login]

  def login
    # byebug
    username = params[:username]
    pw = params[:password]
    member = Member.find_by(username: username)

    if member && member.authenticate(pw)
      @current_member = member
      render json: { success: true, token: generate_token(member) }
      # send back a new token
    else
      # send back an error
      render json: { success: false }
    end
  end

  private
  def generate_token(member)
    alg = 'HS256'
    secret = 'password123'
    payload = { member_id: member.id }
    JWT.encode payload, secret, alg
  end

end
