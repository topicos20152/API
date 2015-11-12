class Api::V1::BaseController < ApplicationController
  before_filter :set_default_response_format
  before_filter :check_token, except: :request_access_token
  skip_before_filter :verify_authenticity_token

  private 
    def set_default_response_format
      request.format = :json
    end

    def check_token
      access_token = params[:access_token]
      unless access_token and @user.check_access_token(access_token)
        render json: "Invalid access token", status: :unauthorized
      end
    end
end
