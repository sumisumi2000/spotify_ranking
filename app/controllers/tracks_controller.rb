class TracksController < ApplicationController
  def ranking
    # 保存したセッションからユーザーを検索
    user = RSpotify::User.find(session[:spotify_user_id])
    # フォームの値をもとにユーザーの人気曲の ID を取得
    @track_ids = user.top_tracks(time_range: "#{params[:term]}_term", limit: params[:limit]).map{ |track| track.id }
  end
end
