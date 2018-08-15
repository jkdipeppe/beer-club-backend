class MembersController < ApplicationController
  before_action :find_member, only: [:update, :show_member]
  skip_before_action :authorized, only: [:create]


    def show_member
      render json: current_member
    end

    def index
      @members = Member.all
      render json: @members
    end

    def create
      @member = Member.create(member_params)
      render json: @member, status: :accepted
    end

    def update
      @current_member.update(member_params)
      if @current_member.save
        render json: @current_member, status: :accepted
      else
        render json: {errors: @current_member.erros.full_messages}, status: :unprocessible_entity
      end
    end

    private
    def member_params
      params.permit(:name, :username, :password)
    end

    def find_member
      @current_member
    end

end
