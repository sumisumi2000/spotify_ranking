module ApplicationHelper
  # 項目を英語から日本語に変換
  def translate_kind(text)
    case text
    when "track"
      "楽曲"
    when "artist"
      "アーティスト"
    end
  end
end
