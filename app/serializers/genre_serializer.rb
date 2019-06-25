class GenreSerializer < ActiveModel::Serializer
  attributes :id, :name, :genre_id
  has_many :songs
end
