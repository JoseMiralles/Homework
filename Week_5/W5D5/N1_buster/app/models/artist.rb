class Artist < ApplicationRecord
  has_many :albums,
    class_name: 'Album',
    foreign_key: :artist_id,
    primary_key: :id

  def n_plus_one_tracks
    albums = self.albums
    tracks_count = {}
    albums.each do |album|
      tracks_count[album.title] = album.tracks.length
    end

    tracks_count
  end

  def better_tracks_query
    albums_with_tracks = self
    .albums   # Uses the has_many(:albums) association
    .select("albums.*, COUNT(*) AS tracks_count")   # Get all of the album data, and the count of rows as tracks_count
    .joins(:tracks)   # Join with the tracks table.
    .group("albums.id") # Group by album id.

    albums_counts = {}
    # Loop trough album with tracks, and store tracks_count in the hash.
    albums_with_tracks.each do |album|
      albums_counts[album.title] = album.tracks_count
    end
    albums_counts
  end
end
