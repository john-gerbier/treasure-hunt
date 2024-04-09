module Api
    class GuessesController < ApplicationController
      include ApplicationHelper

      TREASURE_LATITUDE = 40.7128
      TREASURE_LONGITUDE = -74.0060

      def create
        @user = User.find_or_create_by(email: params[:email])
        @guess = @user.guesses.build(guess_params)
  
        if @guess.save
          check_winner
          render json: { message: 'Guess submitted successfully' }, status: :created
        else
          render json: { errors: @guess.errors.full_messages }, status: :unprocessable_entity
        end
      end
  
      private
  
      def guess_params
        params.require(:guess).permit(:latitude, :longitude)
      end
  
      def check_winner
        distance = calculate_distance(@guess.latitude, @guess.longitude, TREASURE_LATITUDE, TREASURE_LONGITUDE)
        if distance < 1000 && @user.winner.nil?
          @user.create_winner(distance: distance)
          WinnerMailer.winner_email(@user.email).deliver_now
        end
      end
  
      def calculate_distance(lat1, lon1, lat2, lon2)
        haversine_distance(lat1, lon1, lat2, lon2)
      end
    end
  end
  