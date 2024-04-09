module Api
    class WinnersController < ApplicationController
      def index
        @winners = Winner.order(distance: :asc)
        @winners = @winners.reverse if params[:sort] == 'desc'
        @winners = @winners.page(params[:page]).per(10)
  
        render json: @winners
      end
    end
  end
  