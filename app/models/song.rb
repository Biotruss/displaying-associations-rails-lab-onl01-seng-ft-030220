class Song < ActiveRecord::Base
  belongs_to :artist

  def full_title
    "#{self.artist_name} - #{self.title}"
  end

  def artist_name
    self.artist.name
  end
end
