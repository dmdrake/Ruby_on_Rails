module Api
  module V1

    class BikesController < ApplicationController
      before_action :restrict_access
      respond_to :json

      def index
        @bikes = Bike.all
      end

      def available
        @bikes = Bike.where(status: 0)
      end

      def search
        @bikes = Bike.where(bike_code: bike_params[:bike_code])
      end

      def near
        @bikes = Bike.near([bike_params[:latitude], bike_params[:longitude]], bike_params[:distance]).where(status: 0)
      end

    private

      def bike_params
        params.permit(:token, :bike_code, :latitude, :longitude, :distance)
      end

      def restrict_access
        @user = User.find_by_single_access_token(bike_params[:token])
        head :unauthorized unless @user
      end

    end

  end
end
