class GenreSerializer < ActiveModel::Serializer
  attributes :id, :artist, :title, :audioPath
  has_many :songs
end
