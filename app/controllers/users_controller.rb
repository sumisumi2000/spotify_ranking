class UsersController < ApplicationController
  def spotify
    # セッションにユーザーID を保存
    session[:spotify_user_id] = RSpotify::User.new(request.env['omniauth.auth']).id

    # ランキング画面にリダイレクト
    render "contents/index"
  end
end
