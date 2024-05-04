class TracksController < ApplicationController
  def ranking
    # params から曲情報を取得
    @tracks = RSpotify::Track.find(params[:id])
  end
end
