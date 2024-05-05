class StaticpagesController < ApplicationController
  def top; end

  def share
    @term = translate_term(params[:term])
    @limit = params[:limit]
    @kind = params[:kind]
    @spotify_ids = params[:id]
  end

  private
  # 期間を英語から日本語に変換
  def translate_term(text)
    case text
    when "short"
      "４週間"
    when "medium"
      "6ヶ月"
    when "long"
      "一年間"
    end
  end
end
