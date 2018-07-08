module Api
  module V1

    class UsersController < ApplicationController
      before_action :require_http_auth_user, :only => :login
      @logged_in_user

      def login
        @user = @logged_in_user
      end

      private

      def require_http_auth_user
        authenticate_or_request_with_http_basic do |username, password|
          if user = User.find_by_username(username)
            if user.valid_password?(password)
              @logged_in_user = user
              true
            else
              false
          end
        else
          false
        end
      end
    end

    end

  end
end
