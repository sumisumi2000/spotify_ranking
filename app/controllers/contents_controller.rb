class ContentsController < ApplicationController
  def index
    # 保存したセッションからユーザーを検索
    user = RSpotify::User.find(session[:spotify_user_id])
    # 期間と曲数と検索する種類を保存
    @term = params[:term]
    @limit = params[:limit]
    @kind = params[:kind]
    # フォームの値をもとにユーザーの人気曲 or アーティストの ID を取得
    if @kind == "track"
      @spotify_ids = user.top_tracks(time_range: "#{@term}_term", limit: @limit).map{ |track| track.id }
    elsif @kind == "artist"
      @spotify_ids = user.top_artists(time_range: "#{@term}_term", limit: @limit).map{ |artist| artist.id }
    end
  end
end
