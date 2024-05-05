class SpotifyContentComponent < ViewComponent::Base
  with_collection_parameter :spotify_id

  def initialize(spotify_id:, kind:)
    @spotify_id = spotify_id
    @kind = kind
  end
end
