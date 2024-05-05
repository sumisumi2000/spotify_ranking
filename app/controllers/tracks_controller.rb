class TracksController < ApplicationController
  def ranking
    # 保存したセッションからユーザーを検索
    user = RSpotify::User.find(session[:spotify_user_id])
    # 期間と曲数を保存
    @term = params[:term]
    @limit = params[:limit]
    # フォームの値をもとにユーザーの人気曲の ID を取得
    @track_ids = user.top_tracks(time_range: "#{@term}_term", limit: @limit).map{ |track| track.id }
  end
end
