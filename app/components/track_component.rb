class TrackComponent < ViewComponent::Base
  with_collection_parameter :track_id

  def initialize(track_id:)
    @track_id = track_id
  end
end
