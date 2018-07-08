module Api
  module V1

    class RidesController < ApplicationController
      before_action :restrict_access
      respond_to :json

      def index
        @rides = @user.rides
      end

      def show
        @rides = Ride.where(id: ride_params[:id])
      end

    private

      def ride_params
        params.permit(:token, :id)
      end

      def restrict_access
        @user = User.find_by_single_access_token(ride_params[:token])
        head :unauthorized unless @user
      end

    end

  end
end
