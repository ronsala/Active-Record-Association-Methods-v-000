class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    # drake = Artist.where(name: "Drake") # []
    # drake = Artist.find_by(name: "Drake")
    # drake = Artist.find(1) # ActiveRecord::RecordNotFound: Couldn't find Artist with 'id'=1
    drake = Artist.create(:name=>'Drake')
    # binding.pry
    self.artist = drake
  end
end
