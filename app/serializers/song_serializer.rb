class SongSerializer < ActiveModel::Serializer
  attributes :id, :artist
  belongs_to :genre
end
