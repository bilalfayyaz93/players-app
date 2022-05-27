module Api::V1
  class PlayersController < Api::V1::BaseController
    before_action :set_player, only: %i(update show destroy)

    def index
      @players = Player.all
    end

    def show; end

    def create
      @player = Player.new(player_params)

      if @player.save
        render :show, status: :created
      else
        render json: @player.errors, status: :unprocessable_entity
      end
    end

    def update
      if @player.update(player_params)
        render :show, status: :created
      else
        render json: @player.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @player.destroy
    end

    private

    def set_player
      @player = Player.find_by(id: params[:id])

      render json: { message: 'player not found' }, status: :bad_request if @player.nil?
    end

    def player_params
      params.require(:player).permit(:first_name, :last_name, :number, :image)
    end
  end
end
