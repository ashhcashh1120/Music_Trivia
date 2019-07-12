class SongSerializer < ActiveModel::Serializer
  attributes :id, :artist, :title, :audioPath
  belongs_to :genre
end
