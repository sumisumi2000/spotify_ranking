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

  # シェア用の URL を生成
  def generate_share_url(spotify_ids, term, limit, kind)
    body = "https://twitter.com/intent/tweet?url="
    url = "https://light-myrah-sumisumi2000.koyeb.app/share?"
    ids = connect_spotify_ids(spotify_ids)
    "#{body}#{url}#{ids}kind=#{kind}%26limit=#{limit}%26term=#{term}"
  end

  def connect_spotify_ids(spotify_ids)
    ids = ""
    spotify_ids.each do |spotify_id|
      ids << "id%5b%5d=#{spotify_id}%26"
    end
    ids
  end
end
