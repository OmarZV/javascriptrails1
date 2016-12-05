class PlayersController < ApplicationController

	def index
		@players = Player.all
	end
	
	def update
		@player = Player.find(params[:id])
		@player.update_attributes(params[:player])
		respond_to do |format|
			format.html { redirect_to players_path }
		end
	end
end